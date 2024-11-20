import 'package:flutter/material.dart';

class TicketPositionCircle extends StatelessWidget {
  final double? left;
  final double? right;
  const TicketPositionCircle({
    super.key,
    this.left,
    this.right,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height / 2,
      left: left,
      right: right,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 2)),
        child: const CircleAvatar(
          backgroundColor: Colors.black,
          maxRadius: 4,
        ),
      ),
    );
  }
}
