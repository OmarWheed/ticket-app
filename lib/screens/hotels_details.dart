import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/tickets/widgets/arrow_icon_widget.dart';
import 'package:ticket_app/screens/tickets/widgets/expanded_text_widget.dart';
import 'package:ticket_app/screens/tickets/widgets/list_of_hotels.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var arg = ModalRoute.of(context)!.settings.arguments as Map;
    index = arg['index'];

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: false,
            pinned: true,
            expandedHeight: 600,
            elevation: 0,
            scrolledUnderElevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const ArrowIcon()),
            flexibleSpace: FlexibleSpaceBar(
                background: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/${hotelList[index]['image']}",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 5,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    child: Text(
                      hotelList[index]['place'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        shadows: [
                          Shadow(
                            color: Colors.white,
                            offset: Offset(0, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    child: Text(
                      hotelList[index]['destination'],
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            )),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16),
                child: ExpandedTextWidget(text: hotelList[index]['details']),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16, bottom: 16),
                child: Text(
                  "More Images",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              HoriListOfHotels(index: index),
            ]),
          )
        ],
      ),
    );
  }
}
