import 'package:flutter/material.dart';
import '../components/app_card.dart';
import '../components/app_button.dart';

class ProgramDetailsPage extends StatelessWidget {
  const ProgramDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تفاصيل البرنامج')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'اسم البرنامج',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('وصف البرنامج بالتفصيل...'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            AppButton(label: 'استمع الآن', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
