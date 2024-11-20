import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: AppStyle.findTicketsColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "Find Ticket",
        style: AppStyle.textStyle17W,
      ),
    );
  }
}
