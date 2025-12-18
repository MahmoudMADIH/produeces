import 'package:flutter/material.dart';
import '../components/app_card.dart';

class ProgramListPage extends StatelessWidget {
  const ProgramListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('جدول البرامج')),
      body: ListView.builder(
        itemCount: 5, // TODO: Replace with real data
        itemBuilder: (context, index) => AppCard(
          child: ListTile(
            title: Text('برنامج ${index + 1}'),
            subtitle: const Text('وصف البرنامج'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
