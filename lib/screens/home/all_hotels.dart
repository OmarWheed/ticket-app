import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/home/widgets/all_hotels_cards.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Hotels"),
        centerTitle: true,
        backgroundColor: AppStyle.bgColor,
      ),
      backgroundColor: AppStyle.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: GridView.builder(
            itemCount: hotelList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              mainAxisSpacing: 9,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) => GridViewHotels(
              index: index,
              hotels: hotelList[index],
            ),
          ),
        ),
      ),
    );
  }
}
