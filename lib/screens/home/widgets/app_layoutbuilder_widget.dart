import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;
  final bool isColor;
  const AppLayoutBuilderWidget(
      {super.key,
      required this.randomDivider,
      this.width = 3,
      this.isColor = false});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int length = (constraints.constrainWidth() / randomDivider).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          direction: Axis.horizontal,
          children: List.generate(
              length,
              (index) => SizedBox(
                    width: width,
                    height: 1,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor ? Colors.black : Colors.white)),
                  )),
        );
      },
    );
  }
}
