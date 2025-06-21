import 'package:flutter/material.dart';

class HealthCertificationPage extends StatelessWidget {
  const HealthCertificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('✅ الاعتماد الصحي')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ExpansionTile(
            title: Text('📋 تشكيل ملف طلب الترخيص الصحي البيطري'),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '''
🔹 طلب خطي مقدم من الشخص المعني
🔹 نسخة من بطاقة التعريف أو أي وثيقة تثبت الهوية
🔹 نسخة من عقد الإيجار أو سند الملكية
🔹 محضر الأداء الخاص بالمؤسسة، من إعداد الطبيب البيطري الرسمي لموقع المنشأة
🔹 شهادة التصريح لرئيس البلدية أو مقرر استغلال موقع من قبل السلطة المختصة للمؤسسات المصنفة
🔹 سجلات مرقمة ومؤشر عليها من طرف المفتشية البيطرية للولاية موقع المؤسسة
🔹 طابع جبائي بقيمة 1000 دج
                  ''',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
