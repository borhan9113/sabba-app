import 'package:flutter/material.dart';

class HorizontalActionsPage extends StatelessWidget {
  const HorizontalActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الأعمال الأفقية')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ExpansionTile(
            title: Text('📋 ضمان الجودة',
                style: TextStyle(fontWeight: FontWeight.bold)),
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  '''
تعتبر مديرية المصالح البيطرية (DSV) هيئة تفتيش مجهزة بأنظمة المراقبة والرصد، وذلك بحكم النشاطات والمهام الموكلة إليها، تحت إشراف وزير الفلاحة والتنمية الريفية والصيد البحري.

يتطلب تنظيم إجراءات التفتيش وبرمجتها وتنفيذها توفير مستوى عالٍ من الكفاءة والنزاهة والاستقلالية، بالإضافة إلى جودة وسلامة أفضل للمنتجات الحيوانية وذات الأصل الحيواني للمختصين والمواطنين.

تلتزم المديرية باتباع نهج الجودة المتوافق مع متطلبات ISO / IEC 17020.

🔹 شبكة الجودة تتكوّن من:
• مدير الجودة الوطني (RQN) ومناوبه على المستوى المركزي
• 8 مراسلين إقليميين للجودة
• 48 مديرًا محليًا للجودة (واحد لكل ولاية)

🔹 أهم أهداف نهج الجودة:
• تعزيز الدوافع لدى الموظفين حول مشروع واضح
• تحسين ثقافة المسؤولية والرصد الذاتي
• تبسيط وتنسيق الإجراءات وضمان الشفافية والتتبع
• المصادقة على الإجراءات ونظام الجودة وإضفاء الطابع الرسمي عليها
• إعداد دليل الجودة الوطني وخطط الجودة وإجراءات التشغيل
• المطابقة بين المهام والمهارات
• توجيه خطة التكوين المستمر
• تحسين الاتصالات
• تبسيط تصنيف وترتيب المعلومات
• متابعة تنفيذ المهام الميدانية
                  ''',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
