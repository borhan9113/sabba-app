import 'package:flutter/material.dart';

class VeterinaryPharmacyPage extends StatelessWidget {
  const VeterinaryPharmacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('💊 الصيدلة البيطرية')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ExpansionTile(
            title: Text('📄 ملف طلب الترخيص بالتسويق'),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '''
✓ طلب ملف في ثلاث نسخ
✓ الترخيص بالتسويق في البلد الأصلي
✓ الترخيص بالتسويق في بلدان أخرى
✓ اعتماد وحدة الإنتاج
✓ رسالة التمثيل
✓ الملف التحليلي
✓ الملف الصيدلي - السمي
✓ الملف العيادي
✓ عينة من المادة الأولية والمنتج النهائي + تقارير التحاليل الخاصة بها
✓ التشريع الخاص بتسجيل الأدوية البيطرية في البلد الأصلي أو بلدان أخرى
✓ طابع جبائي بقيمة 1000 دج

🔁 ملف طلب تجديد الترخيص بالتسويق:
✓ طلب
✓ تصريح حامل الترخيص بعدم وجود تغييرات
✓ نسخة من الترخيص بالتسويق سارية
✓ طابع جبائي بقيمة 1000 دج
                  ''',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('🌿 استيراد المدخلات الغذائية'),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '''
✓ طلب الترخيص الصحي لاستيراد المكملات مستوفى البيانات
✓ فاتورة شكلية
✓ نسخة من السجل التجاري
✓ نسخة عن الاعتماد الصحي لمؤسسة الإنتاج أو التخزين
✓ نسخة عن اعتماد وحدة الإنتاج
✓ بطاقة فنية موقعة تحتوي:
  - اسم المنتج، المكونات، التعليمات، الأنواع الحيوانية
  - معدل الامتصاص، مدة الحفظ، التخزين، اسم المصنع وعنوانه
✓ شهادة أصلية للمواد الأولية (محدثة)
✓ شهادة أصلية للمكونات والإضافات + اعتماد وحدة إنتاجها
✓ شهادة إثبات المصدر المعدني للفوسفات
✓ طابع جبائي بقيمة 1000 دج
                  ''',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
