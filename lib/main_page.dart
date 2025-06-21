import 'package:crop_recommendation_app/statistics_page.dart';
import 'package:flutter/material.dart';
import 'recommendation_page.dart';
import 'tips_page.dart';
import 'about_page.dart';
import 'forecast_page.dart';
import 'best_crop_page.dart';
import 'settings_page.dart';
import 'statistics_page.dart';
import 'payment_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الصفحة الرئيسية',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[800],
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.green[50]!,
              Colors.green[100]!,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Welcome section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.agriculture,
                      size: 48,
                      color: Colors.green[700],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'مرحباً بك في تطبيق التوصيات الزراعية',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'اختر الخدمة التي تحتاجها',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // Grid of buttons
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.1,
                  children: [
                    buildGridButton(
                      context,
                      '🔍',
                      'توصية بالمحصول',
                      const CropRecommendationPage(),
                      Colors.green[700]!,
                    ),
                    buildGridButton(
                      context,
                      '💹',
                      'أفضل محصول اقتصادي',
                      const BestCropPage(),
                      Colors.green[600]!,
                    ),
                    buildGridButton(
                      context,
                      '📊',
                      'توقع الإنتاج الزراعي',
                      const ForecastPage(),
                      Colors.green[700]!,
                    ),
                    buildGridButton(
                      context,
                      '📈',
                      'الإحصائيات الفلاحية',
                      const StatisticsPage(),
                      Colors.green[600]!,
                    ),
                    buildGridButton(
                      context,
                      '💡',
                      'نصائح للمزارعين',
                      const TipsPage(),
                      Colors.green[700]!,
                    ),
                    buildGridButton(
                      context,
                      'ℹ️',
                      'معلومات التطبيق',
                      const AboutPage(),
                      Colors.green[600]!,
                    ),
                    buildGridButton(
                      context,
                      '💰',
                      'الإدارة المالية',
                      const PaymentPage(),
                      Colors.green[700]!,
                    ),
                    buildGridButton(
                      context,
                      '⚙️',
                      'الإعدادات',
                      const SettingsPage(),
                      Colors.green[600]!,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridButton(
    BuildContext context,
    String emoji,
    String label,
    Widget page,
    Color backgroundColor,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: backgroundColor.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  backgroundColor,
                  backgroundColor.withOpacity(0.8),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  emoji,
                  style: const TextStyle(fontSize: 32),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
