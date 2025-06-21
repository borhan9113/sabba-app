import 'package:flutter/material.dart';

class PlantProtectionProceduresPage extends StatelessWidget {
  const PlantProtectionProceduresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📋 الإجراءات - حماية النباتات')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ExpansionTile(
            title: Text(
              'ضمان الجودة',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '''
تُعتبر مديرية المصالح البيطرية (DSV) هيئة تفتيش مجهزة بأنظمة المراقبة والرصد، وتشرف عليها وزارة الفلاحة والتنمية الريفية والصيد البحري.

يتطلب تنظيم وتنفيذ إجراءات التفتيش مستوى عالٍ من الكفاءة والنزاهة والاستقلالية، مع ضمان جودة وسلامة المنتجات الحيوانية وذات الأصل الحيواني.

تلتزم مديرية المصالح البيطرية باتباع نهج الجودة وفقًا لمتطلبات ISO / IEC 17020 لضمان موثوقية عمليات المراقبة.

🔸 تتكون شبكة الجودة من:
- مدير الجودة الوطني ومناوبه (في المديرية الفرعية للأعمال الأفقية)
- 8 مراسلين إقليميين للجودة
- 48 مديرًا محليًا للجودة (واحد لكل ولاية)

🔸 يسعى هذا النهج إلى:
- التحسين المستمر وتعزيز الفاعلية
- تحفيز الموظفين حول مشروع واضح
- تعزيز ثقافة المسؤولية والرصد الذاتي
- تبسيط وتنسيق الإجراءات
- توثيق نظام الجودة بالكامل (دليل الجودة الوطني، إجراءات التشغيل، شبكات التفتيش...)
- ربط المهام بالمهارات بفعالية
- توجيه خطة التكوين المستمر
- تحسين التواصل الداخلي
- تسهيل تصنيف وترتيب المعلومات
- متابعة تنفيذ المهام بكفاءة
                  ''',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
