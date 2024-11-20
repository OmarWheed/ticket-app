import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/base/widget/text_style_fourth.dart';
import 'package:ticket_app/base/widget/text_style_third.dart';
import 'package:ticket_app/screens/profile/widgets/row_list_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                      image: AssetImage(AppMedia.logo), fit: BoxFit.cover),
                ),
                width: 100,
                height: 100,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "BookTicket",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyle.ticketBlue,
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "Premium Status",
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                "Edit",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          const Divider(
            thickness: 0.6,
            height: 50,
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: AppStyle.ticketBlue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        size: 30,
                        color: AppStyle.ticketBlue,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleThird(text: "You'v got a new award"),
                        TextStyleFourth(text: "You have 95 flights in a Year "),
                      ],
                    )
                  ],
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
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Accumulated miles",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const Column(
            children: [
              Text(
                "192802",
                style: TextStyle(
                  fontSize: 45,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Miles accrued"),
                Text("11 june 2022"),
              ],
            ),
          ),
          const Divider(
            thickness: 0.8,
            height: 20,
          ),
          const RowListTile(
            textRightTop: "23 042",
            textLeftTop: "Airline CO",
          ),
          const RowListTile(
            textRightTop: "24",
            textLeftTop: "McDonal's",
          ),
          const RowListTile(
            textRightTop: "52 340",
            textLeftTop: "DBestech",
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              textAlign: TextAlign.center,
              "How to get more miles",
              style: TextStyle(fontSize: 18, color: AppStyle.ticketBlue),
            ),
          ),
        ],
      ),
    );
  }
}
