
import 'package:flutter/material.dart';
import 'package:ticket_app/base/widget/text_style_fourth.dart';
import 'package:ticket_app/base/widget/text_style_third.dart';
import 'package:ticket_app/screens/home/widgets/app_column_text_layout.dart';

class AppRowImageTextLayout extends StatelessWidget {
  final String leftTopSideImage;
  final String leftTopSideText;
  final String leftBottomSide;
  final String rightTopSide;
  final String rightBottomSide;
  const AppRowImageTextLayout({
    super.key,
    required this.leftTopSideImage,
    required this.leftTopSideText,
    required this.leftBottomSide,
    required this.rightTopSide,
    required this.rightBottomSide,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  leftTopSideImage,
                  scale: 11,
                ),
                TextStyleThird(
                  text: leftTopSideText,
                  isColor: true,
                ),
              ],
            ),
            TextStyleFourth(
              text: leftBottomSide,
              isColor: true,
            ),
          ],
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
