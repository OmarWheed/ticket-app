import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/screens/home/widgets/app_column_text_layout.dart';
import 'package:ticket_app/screens/home/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/screens/home/widgets/big_circle.dart';
import 'package:ticket_app/screens/home/widgets/big_dot.dart';
import 'package:ticket_app/base/widget/text_style_fourth.dart';
import 'package:ticket_app/base/widget/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColor;
  final bool wholeScreen;
  const TicketView({
    super.key,
    required this.ticket,
    this.isColor = false,
    this.wholeScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Column(
        children: [
          // blue part of the ticket
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isColor ? AppStyle.ticketWhite : AppStyle.ticketBlue,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(21), topLeft: Radius.circular(21)),
            ),
            child: Column(
              children: [
                //show departure and destination with icons first line
                Row(
                  children: [
                    TextStyleThird(
                      isColor: isColor,
                      text: ticket['from']['code'],
                    ),
                    const Expanded(child: SizedBox()),
                    BigDot(
                      isColor: isColor,
                    ),
                    Expanded(
                        child: Stack(
                      children: [
                        const SizedBox(
                          height: 25,
                          child: AppLayoutBuilderWidget(
                            randomDivider: 7,
                          ),
                        ),
                        Center(
                            child: RotatedBox(
                                quarterTurns: 1,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor
                                      ? AppStyle.ticketBlue
                                      : Colors.white,
                                )))
                      ],
                    )),
                    BigDot(
                      isColor: isColor,
                    ),
                    const Expanded(child: SizedBox()),
                    TextStyleThird(
                      isColor: isColor,
                      text: ticket['to']['code'],
                    )
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                //show departure and destination with name and time
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextStyleFourth(
                        isColor: isColor,
                        text: ticket['from']['name'],
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    TextStyleFourth(
                      isColor: isColor,
                      text: ticket['flying_time'],
                    ),
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      width: 100,
                      child: TextStyleFourth(
                        text: ticket['to']['name'],
                        align: TextAlign.end,
                        isColor: isColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          //circle and dots
          Container(
            height: 20,
            color: isColor ? AppStyle.ticketWhite : AppStyle.ticketRed,
            child: Row(
              children: [
                BigCircle(
                  isRight: true,
                  isColor: isColor,
                ),
                Expanded(
                  child: SizedBox(
                    height: 25,
                    child: AppLayoutBuilderWidget(
                      isColor: isColor,
                      randomDivider: 16,
                      width: 6,
                    ),
                  ),
                ),
                BigCircle(
                  isRight: false,
                  isColor: isColor,
                )
              ],
            ),
          ),
          //orange part of the ticket
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isColor ? AppStyle.ticketWhite : AppStyle.ticketRed,
              borderRadius: wholeScreen
                  ? BorderRadius.zero
                  : const BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                    ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //show departure and destination with icons first line

                AppColumnTextLayout(
                  isColor: isColor,
                  topText: ticket['date'],
                  bottomText: "DATA",
                ),
                AppColumnTextLayout(
                  isColor: isColor,
                  topText: ticket['departure_time'],
                  bottomText: "Departure Time",
                  axisAlignment: CrossAxisAlignment.center,
                ),
                AppColumnTextLayout(
                  isColor: isColor,
                  topText: ticket['number'].toString(),
                  bottomText: "Number",
                  axisAlignment: CrossAxisAlignment.end,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
