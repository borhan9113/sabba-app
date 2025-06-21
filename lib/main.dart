import 'package:crop_recommendation_app/statistics_Page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'main_page.dart';
import 'recommendation_page.dart';
import 'tips_page.dart';
import 'about_page.dart';
import 'forecast_page.dart';
import 'best_crop_page.dart';
import 'settings_page.dart';
import 'statistics_Page.dart';
import 'product_valorization_page.dart';
import 'investment_promotion_page.dart';
import 'land_management_page.dart';
import 'support_measures_page.dart';
import 'agriculture_loans_page.dart';
import 'mountain_agriculture_page.dart';
import 'steppe_page.dart';
import 'desert_agriculture_page.dart';
import 'plant_protection_page.dart';
import 'procedures_page.dart';
import 'veterinary_organization_page.dart';
import 'horizontal_actions_page.dart';
import 'border_control_page.dart';
import 'veterinary_pharmacy_page.dart';
import 'health_certification_page.dart';
import 'agricultural_statistics_page.dart';
import 'payment_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ✅ تهيئة Firebase باستخدام بيانات مشروعك من Firebase Web
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAvYxt2nM--aVKkV3ZZ8jcYiXIelIVXMH0",
      authDomain: "sabba-11e90.firebaseapp.com",
      projectId: "sabba-11e90",
      storageBucket: "sabba-11e90.firebasestorage.app",
      messagingSenderId: "1014516264017",
      appId: "1:1014516264017:web:01dc5fbc4eac7a89755c70",
      measurementId: "G-13T9B8VT5Z",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SABBA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      // ✅ صفحة تسجيل الدخول كبداية
      home: const LoginPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/main': (context) => const MainPage(),
        '/recommendation': (context) => const CropRecommendationPage(),
        '/tips': (context) => const TipsPage(),
        '/about': (context) => const AboutPage(),
        '/forecast': (context) => const ForecastPage(),
        '/best_crop': (context) => const BestCropPage(),
        '/settings': (context) => const SettingsPage(),
        '/statistics': (context) => const StatisticsPage(),
        '/valorization': (context) => const ProductValorizationPage(),
        '/investment': (context) => const InvestmentPromotionPage(),
        '/land': (context) => const LandManagementPage(),
        '/support': (context) => const SupportMeasuresPage(),
        '/loans': (context) => const AgricultureLoansPage(),
        '/mountain': (context) => const MountainAgriculturePage(),
        '/steppe': (context) => const SteppePage(),
        '/desert': (context) => const DesertAgriculturePage(),
        '/plant_protection': (context) => const PlantProtectionPage(),
        '/plant_protection_procedures': (context) =>
            const PlantProtectionProceduresPage(),
        '/veterinary_organization': (context) =>
            const VeterinaryOrganizationPage(),
        '/horizontal': (context) => const HorizontalActionsPage(),
        '/border': (context) => const BorderControlPage(),
        '/pharmacy': (context) => const VeterinaryPharmacyPage(),
        '/health': (context) => const HealthCertificationPage(),
        '/agriStats': (context) => const AgricultureStatsPage(),
        '/payment': (context) => const PaymentPage(),
      },
    );
  }
}
