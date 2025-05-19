import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CropRecommendationPage extends StatefulWidget {
  const CropRecommendationPage({super.key});

  @override
  _CropRecommendationPageState createState() => _CropRecommendationPageState();
}

class _CropRecommendationPageState extends State<CropRecommendationPage> {
  final TextEditingController nitrogenController = TextEditingController();
  final TextEditingController phosphorusController = TextEditingController();
  final TextEditingController potassiumController = TextEditingController();
  final TextEditingController temperatureController = TextEditingController();
  final TextEditingController humidityController = TextEditingController();
  final TextEditingController phController = TextEditingController();
  final TextEditingController rainfallController = TextEditingController();

  String recommendation = '';

  Future<void> getRecommendation() async {
    final url = Uri.parse('http://localhost:5000/predict');

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "N": double.parse(nitrogenController.text),
          "P": double.parse(phosphorusController.text),
          "K": double.parse(potassiumController.text),
          "temperature": double.parse(temperatureController.text),
          "humidity": double.parse(humidityController.text),
          "ph": double.parse(phController.text),
          "rainfall": double.parse(rainfallController.text),
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final crops = data['recommended_crops'];
        setState(() {
          recommendation = crops
              .map((crop) => "✅ ${crop['name']} (${crop['percentage']}%)")
              .join('\n');
        });
      } else {
        setState(() {
          recommendation = '❌ فشل في جلب التوصية';
        });
      }
    } catch (e) {
      setState(() {
        recommendation = '⚠️ خطأ في الاتصال: $e';
      });
    }
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('توصية بالمحصول')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildTextField("النيتروجين (N)", nitrogenController),
            buildTextField("الفوسفور (P)", phosphorusController),
            buildTextField("البوتاسيوم (K)", potassiumController),
            buildTextField("الحرارة (°C)", temperatureController),
            buildTextField("الرطوبة (%)", humidityController),
            buildTextField("الرقم الهيدروجيني (pH)", phController),
            buildTextField("معدل الأمطار (mm)", rainfallController),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: getRecommendation,
              child: const Text("احصل على التوصية"),
            ),
            const SizedBox(height: 20),
            Text(
              recommendation,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
