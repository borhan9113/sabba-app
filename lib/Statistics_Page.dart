import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  final Map<String, List<String>> sections = const {
    'العقار الفلاحي': [
      'تثمين المنتوجات الفلاحية',
      'ترقية الاستثمار',
      'تنظيم الأراضي',
    ],
    'ضبط الإنتاج الفلاحي وتنميته': [
      'إجراءات الدعم للشعب الفلاحية',
    ],
    'البرمجة والاستثمارات والدراسات الاقتصادية': [
      'القروض الفلاحية',
    ],
    'التنمية الفلاحية في المناطق الجافة وشبه الجافة': [
      'الفلاحة في المناطق الجبلية',
      'السهوب والمراعي',
      'الزراعة الصحراوية',
    ],
    'حمايـة الـنباتات والرقابة التقنية': [
      'مهام و تنظيم مديرية حماية النباتات والرقابة التقنية',
      'الإجراءات',
    ],
    'المصالح البيطرية': [
      'التنظيم',
      'الأعمال الأفقية',
      'مراقبة المراكز الحدودية',
      'الصيدلة البيطرية',
      'الاعتماد الصحي',
    ],
    'الإرشاد الفلاحي': [
      'المؤسسات التكوينية',
      'الإرشاد والدعم الاستشاري',
    ],
    'الإحصائيات الفلاحية': [
      'الإحصائيات الفلاحية',
    ]
  };

  final Map<String, String> routeMap = const {
    'تثمين المنتوجات الفلاحية': '/valorization',
    'ترقية الاستثمار': '/investment',
    'تنظيم الأراضي': '/land',
    'إجراءات الدعم للشعب الفلاحية': '/support',
    'القروض الفلاحية': '/loans',
    'الفلاحة في المناطق الجبلية': '/mountain',
    'السهوب والمراعي': '/steppe',
    'الزراعة الصحراوية': '/desert',
    'مهام و تنظيم مديرية حماية النباتات والرقابة التقنية': '/plant_protection',
    'الإجراءات': '/plant_protection_procedures',
    'التنظيم': '/veterinary_organization',
    'الأعمال الأفقية': '/horizontal',
    'مراقبة المراكز الحدودية': '/border',
    'الصيدلة البيطرية': '/pharmacy',
    'الاعتماد الصحي': '/health',
    'الإحصائيات الفلاحية': '/agriStats',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📊 الإحصائيات الفلاحية')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'بحث عن قسم',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (query) {
                // منطق البحث يمكن إضافته لاحقًا
              },
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: sections.entries.map((entry) {
                return ExpansionTile(
                  key: PageStorageKey(entry.key),
                  title: Text(entry.key,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  children: entry.value.map((sub) {
                    return ListTile(
                      title: Text(sub),
                      leading: const Icon(Icons.arrow_right),
                      onTap: () {
                        // إذا كان هناك مسار موجود لهذا القسم، اذهب إليه
                        if (routeMap.containsKey(sub)) {
                          Navigator.pushNamed(context, routeMap[sub]!);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('📌 $sub')),
                          );
                        }
                      },
                    );
                  }).toList(),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
