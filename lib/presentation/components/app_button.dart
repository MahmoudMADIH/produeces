import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final IconData? icon;
  final bool isOutlined;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color = Colors.yellow,
    this.textColor = Colors.black,
    this.icon,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: isOutlined
          ? OutlinedButton.icon(
              icon: icon != null
                  ? Icon(icon, color: color)
                  : const SizedBox.shrink(),
              label: Text(label, style: TextStyle(color: color)),
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: color),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            )
          : ElevatedButton.icon(
              icon: icon != null
                  ? Icon(icon, color: textColor)
                  : const SizedBox.shrink(),
              label: Text(label, style: TextStyle(color: textColor)),
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
            ),
    );
  }
}
