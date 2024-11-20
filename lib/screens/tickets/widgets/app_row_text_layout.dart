
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/widgets/app_column_text_layout.dart';

class AppRowTextLayout extends StatelessWidget {
  final String leftTopSide;
  final String leftBottomSide;
  final String rightTopSide;
  final String rightBottomSide;
  const AppRowTextLayout({
    super.key,
    required this.leftTopSide,
    required this.leftBottomSide,
    required this.rightTopSide,
    required this.rightBottomSide,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppColumnTextLayout(
          isColor: true,
          topText: leftTopSide,
          bottomText: leftBottomSide,
        ),
        AppColumnTextLayout(
          topText: rightTopSide,
          bottomText: rightBottomSide,
          isColor: true,
          axisAlignment: CrossAxisAlignment.end,
        ),
      ],
    );
  }
}