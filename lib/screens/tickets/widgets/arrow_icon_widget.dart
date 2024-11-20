import 'package:flutter/material.dart';

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withOpacity(0.6),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }
}