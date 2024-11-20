import 'package:flutter/material.dart';

class RowListTile extends StatelessWidget {
  const RowListTile({
    super.key,
    required this.textRightTop,
    required this.textLeftTop,
  });
  final String textRightTop;

  final String textLeftTop;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    TextStyle bottomStyle = const TextStyle(color: Colors.grey);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textRightTop,
                style: textStyle,
              ),
              Text(
                "miles",
                style: bottomStyle,
              )
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textLeftTop,
                style: textStyle,
              ),
              Text(
                "Received from",
                style: bottomStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
