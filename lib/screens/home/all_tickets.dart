import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/utils/routes.dart';
import 'package:ticket_app/screens/home/widgets/ticket.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AllTickets"),
        centerTitle: true,
      ),
      body: ListView(children: [
        SingleChildScrollView(
          child: Column(
            children: ticketList
                .map((singleTicket) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: GestureDetector(
                        onTap: () {
                          var index = ticketList.indexOf(singleTicket);
                          print("Ticket clicked: $index");
                          Navigator.of(context).pushNamed(RoutesName.ticketPage,
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
      ]),
    );
  }
}
