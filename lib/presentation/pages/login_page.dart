import 'package:flutter/material.dart';
import '../components/app_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تسجيل الدخول')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('اسم المستخدم أو البريد الإلكتروني'),
            const SizedBox(height: 8),
            const TextField(),
            const SizedBox(height: 16),
            const Text('كلمة المرور'),
            const SizedBox(height: 8),
            const TextField(obscureText: true),
            const SizedBox(height: 24),
            AppButton(label: 'تسجيل الدخول', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
