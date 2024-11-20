import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ticket App',
      initialRoute: RoutesName.landingPage,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
