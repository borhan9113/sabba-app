import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BestCropPage extends StatefulWidget {
  const BestCropPage({super.key});

  @override
  State<BestCropPage> createState() => _BestCropPageState();
}

class _BestCropPageState extends State<BestCropPage> {
  final List<String> wilayas = [
    'أدرار',
    'الشلف',
    'الأغواط',
    'أم البواقي',
    'باتنة',
    'بجاية',
    'بسكرة',
    'بشار',
    'البليدة',
    'البويرة',
    'تمنراست',
    'تبسة',
    'تلمسان',
    'تيارت',
    'تيزي وزو',
    'الجزائر',
    'الجلفة',
    'جيجل',
    'سطيف',
    'سعيدة',
    'سكيكدة',
    'سيدي بلعباس',
    'عنابة',
    'قالمة',
    'قسنطينة',
    'المدية',
    'مستغانم',
    'المسيلة',
    'معسكر',
    'ورقلة',
    'وهران',
    'البيض',
    'إليزي',
    'برج بوعريريج',
    'بومرداس',
    'الطارف',
    'تندوف',
    'تيسمسيلت',
    'الوادي',
    'خنشلة',
    'سوق أهراس',
    'تيبازة',
    'ميلة',
    'عين الدفلى',
    'النعامة',
    'عين تموشنت',
    'غرداية',
    'غليزان'
  ];

  String? selectedWilaya;
  Map<String, dynamic>? result;
  bool loading = false;
  String error = '';

  Future<void> fetchBestCrop() async {
    setState(() {
      loading = true;
      error = '';
      result = null;
    });

    final url = Uri.parse(
        'http://localhost:5000/best_crop'); // ✅ عدّل إذا كنت تستعمل IP مختلف
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({'state_name': selectedWilaya}),
    );

    if (response.statusCode == 200) {
      setState(() {
        result = jsonDecode(response.body);
        loading = false;
      });
    } else {
      setState(() {
        error = 'حدث خطأ أثناء جلب البيانات';
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📈 أفضل محصول حسب الولاية')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'اختر ولايتك',
                border: OutlineInputBorder(),
              ),
              value: selectedWilaya,
              items: wilayas.map((wilaya) {
                return DropdownMenuItem(
                  value: wilaya,
                  child: Text(wilaya),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedWilaya = value;
                });
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: selectedWilaya == null ? null : fetchBestCrop,
              child: const Text('عرض النتائج'),
            ),
            const SizedBox(height: 16),
            if (loading) const CircularProgressIndicator(),
            if (error.isNotEmpty)
              Text(error, style: const TextStyle(color: Colors.red)),
            if (result != null) Expanded(child: buildResults(result!)),
          ],
        ),
      ),
    );
  }

  Widget buildResults(Map<String, dynamic> data) {
    final best = data['best_crop'];
    final ranked = data['ranked_crops'];

    return ListView(
      children: [
        Text(
          '✅ المحصول الأنسب اقتصاديًا: ${best['crop']}',
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        const SizedBox(height: 8),
        Text(
          '💰 ربح صافٍ: ${best['net_profit'].toString().replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => ',')} دج',
          style: const TextStyle(fontSize: 18),
        ),
        const Divider(height: 32),
        const Text('🔝 المحاصيل مرتبة حسب الربح:',
            style: TextStyle(fontSize: 18)),
        const SizedBox(height: 8),
        ...ranked.map<Widget>((crop) {
          return ListTile(
            title: Text(crop['crop']),
            trailing: Text('${crop['net_profit'].toString()} دج'),
          );
        }).toList(),
      ],
    );
  }
}
