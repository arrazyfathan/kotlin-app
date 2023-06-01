import 'package:flutter/material.dart';
import 'package:kotlin_app/pages/landing_page.dart';
import 'package:kotlin_app/state_management/basic_state_management/new_contact_view_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kotlin App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'Inter'),
      home: const LandingPage(),
      routes: {
        '/new-contact': (context) => const NewContactViewState(),
      },
    );
  }
}
