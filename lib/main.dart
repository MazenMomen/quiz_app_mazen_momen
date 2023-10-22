import 'package:flutter/material.dart';
import 'package:quiz_app_mazen_momen/screens/login_screen.dart';
import 'package:quiz_app_mazen_momen/screens/opening_screen.dart';

void main() {
  runApp(MaterialApp(
    home: FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3), () => "data"),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return LoginScreen();
        } else {
          return const OpeningScreen();
        }
      },
    ),
  ));
}
