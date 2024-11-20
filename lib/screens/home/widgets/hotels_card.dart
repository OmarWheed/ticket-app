import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class HotelsCard extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const HotelsCard({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: AppStyle.ticketBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      height: size.height * 0.45,
      width: size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotels['image']}",
                ),
              ),
            ),
            height: size.height * 0.45 / 2,
          ),
          const SizedBox(
            height: 7,
          ),
          Text(hotels['place'],
              style: AppStyle.textStyleBold27.copyWith(color: Colors.grey)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              hotels['destination'],
              style: AppStyle.textStyle17W,
            ),
          ),
          Text(
            "\$${hotels['price']}/night",
            style: AppStyle.textStyleBold27.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
