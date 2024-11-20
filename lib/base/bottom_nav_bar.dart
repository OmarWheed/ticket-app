import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/bloc/bloc_bottom_nav/bottom_bloc.dart';
import 'package:ticket_app/bloc/bloc_bottom_nav/bottom_event.dart';
import 'package:ticket_app/bloc/bloc_bottom_nav/bottom_state.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/profile/profile._screen.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/tickets/tickets_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  // list of  screen widget
  final appScreen = const <Widget>[
    HomePage(),
    SearchPage(),
    TicketPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomState>(
      builder: (context, state) {
        var selectedIndex = (state as BottomSelectedState).itemSelected;
        return Scaffold(
          backgroundColor: AppStyle.bgColor,
          body: appScreen[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 28,
            elevation: 20,
            onTap: (int index) {
              context.read<BottomNavBloc>().add(OnTappedItem(index));
            },
            currentIndex: selectedIndex,
            unselectedItemColor: const Color(0xFF526400),
            selectedItemColor: Colors.blueGrey,
            showSelectedLabels: false,
            items: listOfBottomNavBarItem,
          ),
        );
      },
    );
  }
}

//list of bottom nav bar item
List<BottomNavigationBarItem> listOfBottomNavBarItem =
    const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
    label: 'Home',
    activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
  ),
  BottomNavigationBarItem(
    icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
    label: 'Search',
    activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
  ),
  BottomNavigationBarItem(
    icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
    label: 'Tickets',
    activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
  ),
  BottomNavigationBarItem(
    icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
    label: 'Profile',
    activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
  )
];
