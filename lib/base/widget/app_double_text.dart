import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class AppDoubleText extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const AppDoubleText(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyle.textStyleBold23,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            "view all",
            style: AppStyle.textStyle17.copyWith(
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
