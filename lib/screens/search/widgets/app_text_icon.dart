import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({
    super.key,
    required this.text,
    required this.icon,
    this.iconColor = AppStyle.planeColor,
    this.textColor = Colors.black,
  });
  final String text;
  final IconData icon;
  final Color? iconColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}
