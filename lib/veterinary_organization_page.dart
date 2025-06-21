import 'package:flutter/material.dart';

class VeterinaryOrganizationPage extends StatelessWidget {
  const VeterinaryOrganizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('التنظيم - المصالح البيطرية')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // الزر التوسعي الأول: المهام
          ExpansionTile(
            title: const Text('المهام',
                style: TextStyle(fontWeight: FontWeight.bold)),
            children: const [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  '''
• ممارسة السلطة البيطرية الوطنية وتحديد الإستراتيجية الصحية البيطرية؛
• إعداد ومتابعة ومراقبة وتقييم التشريعات والقوانين المتعلقة بالصحة الحيوانية والأمراض الحيوانية المنشأ ، ورفاهية الحيوانات وتشخيصها، بالإضافة إلى سلامة المنتجات الحيوانية و ذات أصل حيواني ، بما في ذلك منتجات الصيد وتربية المائيات الموجهة للاستهلاك البشري والأعلاف الحيوانية؛
• مراقبة الممارسة المهنية البيطرية والصيدلية البيطرية.
• تحديد سياسات المرافقة والدعم و تنفيذها لتطوير الصحة الحيوانية وحمايتها؛
• التعاون مع المنظمات الوطنية والدولية المتخصصة في المجال البيطري.
                  ''',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // الزر التوسعي الثاني: الاتصال
          ExpansionTile(
            title: const Text('📞 الاتصال',
                style: TextStyle(fontWeight: FontWeight.bold)),
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('المصلحة')),
                    DataColumn(label: Text('البريد الإلكتروني')),
                    DataColumn(label: Text('هاتف / فاكس')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('مديرية المصالح البيطرية')),
                      DataCell(Text('dsv@madr.gov.dz')),
                      DataCell(Text('08 32 50 023')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('المديرية الفرعية للأعمال الأفقية')),
                      DataCell(Text('dsv.sdappv@madr.gov.dz')),
                      DataCell(Text('16 31 50 023')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('المديرية الفرعية لصحة الحيوانات وراحتها')),
                      DataCell(Text('dsv.sdsba@madr.gov.dz')),
                      DataCell(Text('65 31 50 023')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text(
                          'المديرية الفرعية للرقابة على الحدود والأمن الغذائي')),
                      DataCell(Text('dsv.sdssacsf@madr.gov.dz')),
                      DataCell(Text('29 32 50 023')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('المديرية الفرعية للصيدلة البيطرية')),
                      DataCell(Text('dsv.sdpvi@madr.gov.dz')),
                      DataCell(Text('76 31 50 023')),
                    ]),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '''
📅 أيام الاستقبال:
• الإثنين و الأربعاء: إيداع ملفات الترخيص الصحي للمنتجات الصيدلية
• الإثنين: إيداع ملفات الترخيص الصحي للحيوانات و المنتجات ذات أصل حيواني
• الأربعاء: إيداع الطعون
                  ''',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
