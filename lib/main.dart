import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'main_page.dart';
import 'recommendation_page.dart';
import 'tips_page.dart';
import 'about_page.dart';

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
      title: 'توصية بالمحاصيل',
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
      },
    );
  }
}
