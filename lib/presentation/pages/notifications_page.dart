import 'package:flutter/material.dart';
import '../components/app_notification_tile.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الإشعارات')),
      body: ListView.builder(
        itemCount: 8, // TODO: Replace with real data
        itemBuilder: (context, index) => AppNotificationTile(
          title: 'إشعار $index',
          subtitle: 'تفاصيل الإشعار...',
          icon: Icons.notifications,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
