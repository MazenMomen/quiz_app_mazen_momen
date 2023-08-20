import 'package:flutter/material.dart';
import 'package:quiz_app_mazen_momen/screens/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 61, 212, 184)),
        useMaterial3: true,
      ),
      home: const QuizScreen(),
    );
  }
}
