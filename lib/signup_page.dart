import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();

  String selectedWilaya = 'أدرار'; // قيمة افتراضية
  String error = '';

  final List<String> wilayas = [
    'أدرار',
    'الشلف',
    'الأغواط',
    'أم البواقي',
    'باتنة',
    'بجاية',
    'بسكرة',
    'بشار',
    'البليدة',
    'البويرة',
    'تمنراست',
    'تبسة',
    'تلمسان',
    'تيارت',
    'تيزي وزو',
    'الجزائر',
    'الجلفة',
    'جيجل',
    'سطيف',
    'سعيدة',
    'سكيكدة',
    'سيدي بلعباس',
    'عنابة',
    'قالمة',
    'قسنطينة',
    'المدية',
    'مستغانم',
    'المسيلة',
    'معسكر',
    'ورقلة',
    'وهران',
    'البيض',
    'إليزي',
    'برج بوعريريج',
    'بومرداس',
    'الطارف',
    'تندوف',
    'تيسمسيلت',
    'الوادي',
    'خنشلة',
    'سوق أهراس',
    'تيبازة',
    'ميلة',
    'عين الدفلى',
    'النعامة',
    'عين تيموشنت',
    'غرداية',
    'غليزان'
  ];

  Future<void> signupUser() async {
    try {
      final userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      // تخزين البيانات في Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'email': emailController.text.trim(),
        'name': nameController.text.trim(),
        'wilaya': selectedWilaya,
        'address': addressController.text.trim(),
        'phone': phoneController.text.trim(),
        'created_at': DateTime.now(),
      });

      Navigator.pushReplacementNamed(context, '/main');
    } on FirebaseAuthException catch (e) {
      setState(() {
        error = e.message ?? 'حدث خطأ';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إنشاء حساب')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'الاسم الكامل'),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: selectedWilaya,
              decoration: const InputDecoration(labelText: 'الولاية'),
              items: wilayas
                  .map((wilaya) => DropdownMenuItem(
                        value: wilaya,
                        child: Text(wilaya),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedWilaya = value!;
                });
              },
            ),
            const SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: const InputDecoration(labelText: 'العنوان'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(labelText: 'رقم الهاتف'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'البريد الإلكتروني'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'كلمة المرور'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: signupUser,
              child: const Text('إنشاء الحساب'),
            ),
            if (error.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(error, style: const TextStyle(color: Colors.red)),
              ),
          ],
        ),
      ),
    );
  }
}
