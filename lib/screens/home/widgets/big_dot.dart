import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class BigDot extends StatelessWidget {
  final bool isColor;
  const BigDot({super.key, this.isColor = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          border: Border.all(
            color: isColor ?AppStyle.ticketBlue: Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
