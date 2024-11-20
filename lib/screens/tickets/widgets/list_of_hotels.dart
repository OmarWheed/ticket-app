import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HoriListOfHotels extends StatelessWidget {
  const HoriListOfHotels({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, bottom: 50),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotelList[index]['images'].length,
        itemBuilder: (context, imageIDX) => Container(
          width: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/${hotelList[index]['images'][imageIDX]}",
                  ))),
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
        ),
      ),
    );
  }
}
