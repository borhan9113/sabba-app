import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fl_chart/fl_chart.dart';

class ForecastPage extends StatefulWidget {
  const ForecastPage({super.key});

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  final TextEditingController cropController = TextEditingController();
  final TextEditingController yearsController =
      TextEditingController(text: "5");

  List<FlSpot> spots = [];
  List<String> labels = [];
  String error = '';
  bool loading = false;

  Future<void> getForecast() async {
    setState(() {
      loading = true;
      error = '';
      spots = [];
      labels = [];
    });

    final url = Uri.parse('http://localhost:5000/forecast');
    final body = jsonEncode({
      'crop': cropController.text.trim(),
      'years': int.parse(yearsController.text.trim()),
    });

    try {
      final response = await http.post(url,
          headers: {"Content-Type": "application/json"}, body: body);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final forecast = data['forecast'] as Map<String, dynamic>;

        int i = 0;
        forecast.forEach((year, value) {
          spots.add(FlSpot(i.toDouble(), (value as num).toDouble()));
          labels.add(year);
          i++;
        });

        setState(() => loading = false);
      } else {
        setState(() {
          error = 'حدث خطأ في التوقع';
          loading = false;
        });
      }
    } catch (e) {
      setState(() {
        error = '⚠️ فشل في الاتصال: $e';
        loading = false;
      });
    }
  }

  Widget buildChart() {
    if (spots.isEmpty) return const Text("لا توجد بيانات بعد");

    return SizedBox(
      height: 300,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              barWidth: 4,
              color: Colors.green,
              dotData: const FlDotData(show: true),
            )
          ],
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: true),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  int index = value.toInt();
                  return Text(
                      index >= 0 && index < labels.length ? labels[index] : '');
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("📈 توقع إنتاج محصول")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: cropController,
              decoration: const InputDecoration(labelText: 'اسم المحصول'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: yearsController,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: 'عدد السنوات المستقبلية'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: getForecast,
              child: const Text("تنفيذ التوقع"),
            ),
            const SizedBox(height: 20),
            if (loading)
              const Center(child: CircularProgressIndicator())
            else if (error.isNotEmpty)
              Text(error, style: const TextStyle(color: Colors.red))
            else
              Column(
                children: [
                  buildChart(),
                  const SizedBox(height: 20),
                  ...List.generate(spots.length, (i) {
                    return Text("🔮 ${labels[i]}: ${spots[i].y} ألف دولار");
                  })
                ],
              )
          ],
        ),
      ),
    );
  }
}
