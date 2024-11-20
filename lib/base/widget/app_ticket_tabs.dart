import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({
    super.key,
    required this.firstTab,
    required this.secondTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppStyle.ticketTabs,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          AppTabs(
            tabText: firstTab,
          ),
          AppTabs(
            tabBorder: true,
            tabColor: true,
            tabText: secondTab,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  const AppTabs({
    super.key,
    required this.tabText,
    this.tabBorder = false,
    this.tabColor = false,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.44,
      decoration: BoxDecoration(
        borderRadius: tabBorder
            ? const BorderRadius.horizontal(right: Radius.circular(50))
            : const BorderRadius.horizontal(left: Radius.circular(50)),
        color: tabColor ? Colors.white : Colors.transparent,
      ),
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Center(child: Text(tabText)),
    );
  }
}
