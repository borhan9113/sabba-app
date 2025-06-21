import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('💰 الإدارة المالية'),
        centerTitle: true,
        backgroundColor:
            const Color.fromARGB(255, 5, 119, 2), // لون مميز للشريط العلوي
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // مقدمة مع تصميم جذاب
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),

          // خيارات الدفع
          const SizedBox(height: 20),

          // دفع الفواتير
          _buildListTile(context, Icons.payment, 'دفع الفواتير',
              'إضافة منطق دفع الفواتير هنا...'),

          const Divider(),

          // الدفع باستخدام بريدي موب
          _buildListTile(context, Icons.credit_card, 'الدفع باستخدام بريدي موب',
              'يرجى اتباع التعليمات التالية...'),

          const Divider(),

          // مراقبة الميزانيات
          _buildListTile(context, Icons.money, 'مراقبة الميزانيات',
              'هنا يمكنك إضافة تفاصيل الميزانيات الخاصة بك...'),

          const Divider(),

          // تقارير مالية
          _buildListTile(context, Icons.report, 'التقارير المالية',
              'هنا يمكنك عرض تقارير الإيرادات والمصروفات...'),

          const Divider(),

          // معلومات الدفع للفلاحين
          _buildListTile(context, Icons.group, 'معلومات الدفع للفلاحين',
              'هنا يمكنك عرض معلومات الدفع الخاصة بالفلاحين...'),
        ],
      ),
    );
  }

  // بناء ListTile مع تصميم موحد
  Widget _buildListTile(
      BuildContext context, IconData icon, String title, String message) {
    return ListTile(
      leading: Icon(icon, color: const Color.fromARGB(255, 17, 107, 9)),
      title: Text(title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
      onTap: () {
        _showDialog(context, title, message);
      },
    );
  }

  // عرض مربع حوار عند النقر
  void _showDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('حسناً'),
          ),
        ],
      ),
    );
  }
}
