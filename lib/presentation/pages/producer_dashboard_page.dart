import 'package:flutter/material.dart';

class ProducerDashboardPage extends StatelessWidget {
  const ProducerDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('لوحة تحكم المنتج')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('لوحة تحكم المنتج'),
            SizedBox(height: 16),
            Text('إحصائيات، إشعارات، إدارة الرسائل، وجدولة البرامج'),
          ],
        ),
      ),
    );
  }
}
