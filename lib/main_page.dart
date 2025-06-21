import 'package:crop_recommendation_app/Statistics_Page.dart';
import 'package:flutter/material.dart';
import 'recommendation_page.dart';
import 'tips_page.dart';
import 'about_page.dart';
import 'forecast_page.dart';
import 'best_crop_page.dart';
import 'settings_page.dart';
import 'Statistics_Page.dart';
import 'payment_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الصفحة الرئيسية'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButton(
              context,
              '🔍 توصية بالمحصول',
              const CropRecommendationPage(),
            ),
            buildButton(
              context,
              '💹 أفضل محصول اقتصادي حسب الولاية',
              const BestCropPage(),
            ),
            const SizedBox(height: 16),
            buildButton(
              context,
              '📊 توقع الإنتاج الزراعي',
              const ForecastPage(),
            ),
            const SizedBox(height: 16),
            buildButton(
              context,
              '📊 الإحصائيات الفلاحية',
              const StatisticsPage(),
            ),
            const SizedBox(height: 16),
            buildButton(
              context,
              '💡 نصائح للمزارعين',
              const TipsPage(),
            ),
            const SizedBox(height: 16),
            buildButton(
              context,
              'ℹ️ معلومات حول التطبيق',
              const AboutPage(),
            ),
            buildButton(
              context,
              '💰 الإدارة المالية',
              const PaymentPage(),
            ),
            const SizedBox(height: 16),
            buildButton(
              context,
              '⚙️ الإعدادات',
              const SettingsPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String label, Widget page) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.green[700],
        ),
        child: Text(label, style: const TextStyle(fontSize: 18)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
