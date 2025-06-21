import 'package:flutter/material.dart';

class PlantProtectionPage extends StatelessWidget {
  const PlantProtectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🌿 مديرية حماية النباتات'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ExpansionTile(
            title: const Text(
              'مهام المديرية',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            children: const [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '''
تمارس وزارة الفلاحة و التنمية الريفية و الصيد البحري مـــهـــام الــســـلـــطـــة الــوطـــنـــيـــة في مـــجــالات الصحة النباتية والتقنية النباتية من خلال مديرية حماية النباتات والرقابة التقنية، المكلفة بما يأتي:

🔸 ممارسة مهام السلطة الوطنية في مجالات الصحة النباتية والتقنية النباتية.
🔸 إعداد سياسات المرافقة والدعم والسهر على تنفيذها لحماية وتثمين المادة النباتية.
🔸 إعداد تنظيم الصحة النباتية والتقنية النباتية، وتنظيم حماية الحيازات النباتية، خاصة ما تعلق منها بإنتاج واستيراد وتصدير وتوزيع واستعمال المدخلات الفلاحية (البذور، الشتائل، الأصناف، الأسمدة، ومواد الصحة النباتية).
🔸 ضمان أنشطة مراقبة الصحة النباتية والتقنية النباتية للمنتجات النباتية أو ذات المصدر النباتي والمدخلات الفلاحية على الحدود وداخل الإقليم الوطني.
🔸 وضع جهاز وطني للسهر على الصحة النباتية ومخططات التدخل ضد أعداء النباتات للمحافظة على الإنتاج الفلاحي.
🔸 المشاركة في النشاطات المعيارية في مجال حماية الصحة النباتية ومراقبة البذور والشتائل، ومتابعتها مع الهيئات الوطنية والدولية.
''',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ExpansionTile(
            title: const Text(
              'المديريات الفرعية ومهامها',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            children: const [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '''
📌 تضم المديرية العامة ثلاث (3) مديريات فرعية:

1️⃣ المديرية الفرعية للرقابة التقنية  
2️⃣ المديرية الفرعية للمصادقات والاعتمادات  
3️⃣ المديرية الفرعية للسهر على الصحة النباتية  

وتتكلف بـ:

🔸 ضمان عمليات مراقبة الصحة النباتية عند الحدود وداخل الإقليم الوطني.  
🔸 تحليل وتقييم وتسيير الأخطار المرتبطة بأنشطة المراقبة الصحية النباتية وانعكاساتها على الإنتاج الفلاحي.  
🔸 المشاركة في النشاطات المتعلقة بإعداد وتنفيذ المعايير في مجال مراقبة الصحة النباتية والحجر النباتي، ومتابعتها مع الهيئات الدولية.  
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
