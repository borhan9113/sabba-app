import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("حول التطبيق"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              "📱 تطبيق توصية بالمحاصيل الزراعية - SABBA",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "🔍 هذا التطبيق يساعد الفلاح الجزائري على اتخاذ قرار مدروس حول المحصول الأنسب لزراعته "
              "استنادًا إلى معايير مثل:\n"
              "- نسبة النيتروجين، الفوسفور، والبوتاسيوم\n"
              "- درجة الحرارة والرطوبة\n"
              "- نسبة الأمطار ودرجة الحموضة (pH)",
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.right,
            ),
            SizedBox(height: 20),
            Text(
              "🤖 يعمل التطبيق بتقنيات الذكاء الاصطناعي لتحليل المعطيات وإعطاء توصيات دقيقة "
              "مع عرض النسب المئوية لأفضل المحاصيل.",
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.right,
            ),
            SizedBox(height: 20),
            Text(
              "📍 موجه خصيصًا للفلاحين الجزائريين، مع مراعاة المحاصيل الشائعة في الجزائر.",
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.right,
            ),
            SizedBox(height: 30),
            Text(
              "👨‍💻 فريق التطوير – مشروع تخرج 2025:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Text(
              "🔸 زطال برهان الدين\n"
              "🔸 فراح منذر\n"
              "🔸 رحيوي محمد رؤوف\n"
              "🔸 زويتي سامي شفيق",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
