import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/utils/routes.dart';
import 'package:ticket_app/base/widget/app_double_text.dart';
import 'package:ticket_app/screens/home/widgets/hotels_card.dart';
import 'package:ticket_app/screens/home/widgets/ticket.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        // first container
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: AppStyle.textStyle17,
                      ),
                      Text(
                        'Book Ticket',
                        style: AppStyle.textStyleBold27,
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage(AppMedia.logo))),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const AppTextIcon(
                text: "Search",
                icon: FluentSystemIcons.ic_fluent_search_regular,
                iconColor: Color(0xFFBFC205),
              ),
              const SizedBox(
                height: 30,
              ),
              AppDoubleText(
                title: "UpComing Flights",
                onPressed: () =>
                    Navigator.of(context).pushNamed(RoutesName.allTickets),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ticketList
                      .take(2)
                      .map((singleTicket) => Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: GestureDetector(
                              onTap: () {
                                var index = ticketList.indexOf(singleTicket);

                                Navigator.of(context).pushNamed(
                                    RoutesName.ticketPage,
                                    arguments: {"index": index});
                              },
                              child: TicketView(
                                ticket: singleTicket,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AppDoubleText(
                title: "Hotels",
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesName.allHotels);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: hotelList
                      .take(2)
                      .map((singleHotel) => GestureDetector(
                          onTap: () {
                            var index = hotelList.indexOf(singleHotel);

                            Navigator.of(context).pushNamed(
                                RoutesName.hotelDetails,
                                arguments: {"index": index});
                          },
                          child: HotelsCard(hotels: singleHotel)))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
