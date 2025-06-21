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
              "- نسبة الأمطار ودرجة الحموضة (pH)\n"
              "- تحليل السلاسل الزمنية لإنتاج المحاصيل المتوقعة",
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.right,
            ),
            SizedBox(height: 20),
            Text(
              "🤖 يعمل التطبيق باستخدام ثلاث نماذج ذكاء اصطناعي لتحليل البيانات وإعطاء توصيات دقيقة "
              "لأفضل المحاصيل الزراعية بناءً على معايير متعددة. النماذج هي:\n"
              "- نموذج توصية المحاصيل: يعطي محاصيل مفضلة بناءً على معايير التربة والمناخ.\n"
              "- نموذج التوقعات: يقدم تقديرات لإنتاج المحاصيل في السنوات القادمة.\n"
              "- نموذج أفضل محصول اقتصادي: يحدد المحصول الأكثر ربحًا في كل ولاية.",
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
              "🌟 ميزات التطبيق الجديدة:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Text(
              "🔹 توصية محاصيل دقيقة تعتمد على المعطيات البيئية المحلية.\n"
              "🔹 تحليل السلاسل الزمنية لتوقع المحاصيل الزراعية في السنوات القادمة.\n"
              "🔹 قاعدة بيانات شاملة للمحاصيل الزراعية المحلية.\n"
              "🔹 واجهة سهلة الاستخدام ومناسبة للمزارعين.\n"
              "🔹 دعم فني وتحليل اقتصادي للمحاصيل."
              "🔹 إمكانية تخصيص التوصيات بناءً على المدخلات الشخصية للمزارع.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
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
