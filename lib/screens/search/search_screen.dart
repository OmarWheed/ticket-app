import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/base/widget/app_double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/base/widget/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are \nyou looking for?",
            style: AppStyle.textStyleBold27.copyWith(fontSize: 40),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: "Airline Tickets",
            secondTab: "Hotels",
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            text: "Departure",
            icon: Icons.flight_takeoff_rounded,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            text: "Arrival",
            icon: Icons.flight_land_rounded,
          ),
          const SizedBox(
            height: 20,
          ),
          const FindTicket(),
          const SizedBox(
            height: 20,
          ),
          const AppDoubleText(
            title: "Upcoming Flights",
            onPressed: null,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 2,
                      blurRadius: 1,
                    )
                  ],
                ),
                width: size.width * 0.45,
                height: size.height * 0.53,
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppMedia.planeSit),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "20%\nDiscount on the early booking of this flight.\nDon't Miss.",
                      style: AppStyle.textStyleBold23,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(18),
                        width: size.width * 0.42,
                        height: size.height * 0.28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color(0xFF3AB8B8),
                        ),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Discount\nfor Survey\n",
                                style: AppStyle.textStyleBold23
                                    .copyWith(color: Colors.white),
                              ),
                              const TextSpan(
                                text:
                                    "\nTake the survey\nabout our\nservices and\nget discount",
                                style: AppStyle.textStyle18,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -40,
                        right: -45,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: AppStyle.circleColor,
                              )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    padding: const EdgeInsets.all(18),
                    width: size.width * 0.42,
                    height: size.height * 0.23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: AppStyle.textStyleBold23
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "😍🥰😘",
                          style: TextStyle(fontSize: 35),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
