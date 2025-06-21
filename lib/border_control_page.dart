import 'package:flutter/material.dart';

class BorderControlPage extends StatelessWidget {
  const BorderControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📦 مراقبة المراكز الحدودية')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ExpansionTile(
            title: Text('🐄 الأبقار'),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '''
✓ طلب الترخيص الصحي للاستيراد مستوفى البيانات
✓ شهادة اعتماد أصلية من المحجر الصحي (للعجول وثيران التسمين)
✓ أو من منطقة العبور (للماشية الموجهة للجزارة)
✓ التعهدات مملوءة وموقعة بدون شطب
✓ تعهد للحيوانات الموجهة للجزارة
✓ نسخة من السجل التجاري أو بطاقة الفلاح
✓ فاتورة شكلية
✓ طابع جبائي 1000 دج
                  ''',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('🥩 اللحوم والأسماك (الطازجة والمجمدة)'),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '''
✓ طلب الترخيص الصحي للاستيراد
✓ شهادة نظافة غرف التبريد (أصلية، لا تتعدى 15 يومًا)
✓ نسخة من الاعتماد الصحي لغرف التبريد
✓ نسخة من عقد الإيجار (إذا كانت الغرف غير مملوكة)
✓ نسخة من السجل التجاري
✓ فاتورة شكلية
✓ طابع جبائي 1000 دج
                  ''',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('🐣 مدخلات الدواجن (بيض التفريخ والصيصان)'),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '''
✓ طلب الترخيص الصحي للاستيراد
✓ شهادة تطهير ومساحة فارغة أصلية (لا تتعدى 15 يومًا)
✓ نسخة من الاعتماد الصحي لمؤسسة التربية أو التفريخ
✓ خطة الوقاية مصادق عليها من البلد المنشأ
✓ فاتورة شكلية
✓ طابع جبائي 1000 دج
                  ''',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('🥛 الحليب ومشتقاته'),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '''
✓ طلب الترخيص الصحي للاستيراد
✓ نسخة من الاعتماد الصحي لمكان التخزين
✓ شهادة نظافة أصلية (أقل من 15 يومًا)
✓ نسخة من السجل التجاري
✓ فاتورة شكلية
✓ طابع جبائي 1000 دج
                  ''',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('📦 منتجات أخرى (عسل، أحشاء، علف...)'),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '''
✓ طلب الترخيص الصحي للاستيراد
✓ نسخة من الاعتماد الصحي لمواقع التخزين
✓ نسخة من السجل التجاري
✓ فاتورة شكلية
✓ طابع جبائي 1000 دج
                  ''',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('🐎 الخيول'),
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '''
✓ طلب الترخيص الصحي للاستيراد
✓ شهادة اعتماد أصلية من المحجر الصحي (أقل من 15 يومًا)
✓ تقارير التحاليل (ضمن آخر 30 يوم):
  - فقر الدم المعدي
  - التهاب الرحم
  - حمى تكساس
  - التهاب الشرايين الفيروسية
  - الرُّعَامُ
  - الدورين (باستثناء فرنسا)
✓ تعهد موقع
✓ نسخة من الدفاتر التصنيفية
✓ نسخة من السجل التجاري أو حالة المورد
✓ طابع جبائي 1000 دج
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
