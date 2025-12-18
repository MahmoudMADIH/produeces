import 'package:flutter/material.dart';
import '../components/app_message_tile.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الرسائل')),
      body: ListView.builder(
        itemCount: 10, // TODO: Replace with real data
        itemBuilder: (context, index) => AppMessageTile(
          sender: 'مستخدم $index',
          message: 'هذه رسالة تجريبية',
          time: '10:${index} ص',
          isOfficialReply: index % 3 == 0,
        ),
      ),
    );
  }
}
