import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/bloc/bloc_bottom_nav/bottom_bloc.dart';
import 'package:ticket_app/bloc/bloc_expanded_text.dart/expanded_bloc.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/hotels_details.dart';
import 'package:ticket_app/screens/tickets/tickets_screen.dart';

class RoutesName {
  const RoutesName._();
  static const String allTickets = "all_tickets";
  static const String landingPage = "'bottomNavBar'";
  static const String ticketPage = "'ticketPage'";
  static const String allHotels = "allHotels'";
  static const String hotelDetails = "hotel_details";
}

class Routes {
  static Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RoutesName.allTickets:
        return MaterialPageRoute(builder: (context) => const AllTickets());

      case RoutesName.landingPage:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => BottomNavBloc(),
                  child: const BottomNavBar(),
                ));
      case RoutesName.hotelDetails:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => ExpandedBloc(),
                  child: const HotelDetails(),
                ),
            settings: setting);
      case RoutesName.ticketPage:
        return MaterialPageRoute(
            builder: (context) => const TicketPage(), settings: setting);
      case RoutesName.allHotels:
        return MaterialPageRoute(
            builder: (context) => const AllHotels(), settings: setting);

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text("This Route not found"),
                  ),
                ));
    }
  }
}
