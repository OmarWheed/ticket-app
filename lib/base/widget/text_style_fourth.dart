import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign? align;
  final bool isColor;
  const TextStyleFourth({
    super.key,
    required this.text,
    this.align,
    this.isColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor ? AppStyle.textStyle15B : AppStyle.textStyle15,
      textAlign: align,
    );
  }
}
