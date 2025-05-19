import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({super.key});

  final List<String> tips = const [
    "✅ قم بتحليل التربة قبل الزراعة لتحديد نوع السماد المناسب.",
    "🌧️ راقب نسبة الأمطار لتفادي الري الزائد أو الجفاف.",
    "🌱 اختر المحاصيل التي تتناسب مع مناخ منطقتك.",
    "🪱 استخدم الأسمدة العضوية لتقوية التربة بشكل طبيعي.",
    "🚜 لا تزرع نفس المحصول في نفس الأرض كل سنة (اتبع الدورة الزراعية).",
    "🕵️ افحص النباتات بانتظام لاكتشاف الأمراض مبكرًا.",
    "💧 استخدم نظام الري بالتنقيط لتوفير الماء.",
    "🌾 ازرع في الوقت المناسب حسب التقويم الزراعي المحلي.",
    "🧪 حافظ على توازن pH التربة (بين 6 و 7 لمعظم المحاصيل).",
    "🍀 استخدم المحاصيل المغطية لتحسين خصوبة التربة ومنع الأعشاب الضارة."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("نصائح للفلاح"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tips.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                tips[index],
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.right,
              ),
            ),
          );
        },
      ),
    );
  }
}
