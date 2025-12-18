import 'package:flutter/material.dart';

class AppSectionTitle extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Color color;

  const AppSectionTitle({
    Key? key,
    required this.title,
    this.icon,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null) ...[
          Icon(icon, color: color),
          const SizedBox(width: 8),
        ],
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: color),
        ),
      ],
    );
  }
}
