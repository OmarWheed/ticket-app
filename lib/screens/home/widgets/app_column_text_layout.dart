import 'package:flutter/material.dart';
import 'package:ticket_app/base/widget/text_style_fourth.dart';
import 'package:ticket_app/base/widget/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final bool isColor;
  final CrossAxisAlignment axisAlignment;
  const AppColumnTextLayout(
      {super.key,
      this.isColor = false,
      required this.topText,
      required this.bottomText,
      this.axisAlignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: axisAlignment,
      children: [
        TextStyleThird(
          text: topText,
          isColor: isColor,
        ),
        const SizedBox(
          height: 5,
        ),
        TextStyleFourth(
          text: bottomText,
          isColor: isColor,
        ),
      ],
    );
  }
}
