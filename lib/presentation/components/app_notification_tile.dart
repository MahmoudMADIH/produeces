import 'package:flutter/material.dart';

class AppNotificationTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;

  const AppNotificationTile({
    Key? key,
    required this.title,
    required this.subtitle,
    this.icon = Icons.notifications,
    this.color = Colors.yellow,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withOpacity(0.2),
        child: Icon(icon, color: color),
      ),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
      onTap: onTap,
    );
  }
}
