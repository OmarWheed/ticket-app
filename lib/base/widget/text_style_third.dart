import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({
    super.key,
    this.isColor = false,
    required this.text,
  });
  final String text;
  final bool isColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor ? AppStyle.textStyle17B : AppStyle.textStyle17W,
    );
  }
}
