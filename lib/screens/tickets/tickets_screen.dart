import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widget/app_ticket_tabs.dart';
import 'package:ticket_app/screens/home/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/screens/home/widgets/ticket.dart';
import 'package:ticket_app/screens/tickets/widgets/app_row_image_text_layout.dart';
import 'package:ticket_app/screens/tickets/widgets/app_row_text_layout.dart';
import 'package:ticket_app/screens/tickets/widgets/barcode_widget.dart';
import 'package:ticket_app/screens/tickets/widgets/position_circle.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  late int ticketIndex = 0;
  @override
  void didChangeDependencies() {
    if (ModalRoute.settingsOf(context)!.arguments != null) {
      var arg = ModalRoute.settingsOf(context)!.arguments as Map;
      ticketIndex = arg['index'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Tickets",
                style: AppStyle.textStyleBold27,
              ),
              const SizedBox(
                height: 40,
              ),
              const AppTicketTabs(
                firstTab: "UnComing",
                secondTab: "Pervious",
              ),
              const SizedBox(
                height: 25,
              ),
              TicketView(
                isColor: true,
                ticket: ticketList[ticketIndex],
                wholeScreen: true,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21),
                    ),
                    color: Colors.white),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          AppRowTextLayout(
                            leftTopSide: "Flutter DB",
                            leftBottomSide: "Passenger",
                            rightTopSide: "5221c36869",
                            rightBottomSide: "passport",
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: AppLayoutBuilderWidget(
                              randomDivider: 15,
                              width: 5,
                              isColor: true,
                            ),
                          ),
                          AppRowTextLayout(
                            leftTopSide: "364738 28274478",
                            leftBottomSide: "number if E-ticket",
                            rightTopSide: "B2SG28",
                            rightBottomSide: "booking code",
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: AppLayoutBuilderWidget(
                              randomDivider: 15,
                              width: 5,
                              isColor: true,
                            ),
                          ),
                          AppRowImageTextLayout(
                            leftTopSideImage: AppMedia.visaCard,
                            leftTopSideText: " **** 2462",
                            leftBottomSide: "payment method",
                            rightTopSide: r"$249.99",
                            rightBottomSide: "price",
                          ),
                          BarCode()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: TicketView(ticket: ticketList[ticketIndex]),
              ),
            ],
          ),
          const TicketPositionCircle(
            left: 2,
          ),
          const TicketPositionCircle(
            right: 2,
          )
        ],
      ),
    );
  }
}
