
import 'package:budget_bites_store_interface/all_pages/Reset_password_screen/reset_pass_screen.dart';
import 'package:budget_bites_store_interface/all_pages/onboarding_screens/onboard_screen_final.dart';
import 'package:budget_bites_store_interface/all_pages/onboarding_screens/onboard_screen_one.dart';
import 'package:budget_bites_store_interface/all_pages/onboarding_screens/onboard_screen_three.dart';
import 'package:budget_bites_store_interface/all_pages/onboarding_screens/onboard_screen_two.dart';
import 'package:flutter/material.dart';


import 'all_pages/forgot_password_screen/forgot_password_screen.dart';
import 'all_pages/onboarding_screens/Onboard_Screen.dart';
import 'all_pages/profile_screen/profile_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnBoard(),
    );
  }
}


