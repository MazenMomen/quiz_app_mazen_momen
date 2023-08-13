import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_mazen_momen/screens/result_screen.dart';

class QuizAnswers extends StatelessWidget {
  final int index;
  QuizAnswers({super.key, required this.index});
  List Answers = ["Date", "Meksiky", "CC", "ElRayes"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.09,
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.02,
          horizontal: MediaQuery.of(context).size.width * 0.02),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const ResultScreen(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          elevation: 10,
          backgroundColor: Colors.blueGrey,
        ),
        child: Text(
          Answers[index],
          style: GoogleFonts.roboto(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
