import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  final bool isColor;
  const BigCircle({
    super.key,
    required this.isRight,
    this.isColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isColor ? Colors.transparent : Colors.white,
          borderRadius: isRight
              ? const BorderRadius.only(
                  topRight: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  bottomLeft: Radius.circular(21),
                ),
        ),
      ),
    );
  }
}
