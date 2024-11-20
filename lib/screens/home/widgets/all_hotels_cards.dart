import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/base/utils/routes.dart';

class GridViewHotels extends StatelessWidget {
  final Map<String, dynamic> hotels;
  final int index;
  const GridViewHotels({super.key, required this.hotels, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(RoutesName.hotelDetails, arguments: {"index": index});
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppStyle.ticketBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: Container(
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
            ),
            const SizedBox(
              height: 8,
            ),
            Text(hotels['place'],
                style: AppStyle.textStyle17.copyWith(color: Colors.grey)),
            Row(
              children: [
                Text(
                  hotels['destination'],
                  style: AppStyle.textStyle15,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "\$${hotels['price']}/night",
                  style: AppStyle.textStyle15.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
