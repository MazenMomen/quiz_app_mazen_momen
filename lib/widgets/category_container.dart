import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;
  CategoryContainer({super.key, required this.index});

  List quizName = ["General Test", "Sports Test", "Math Test"];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const QuizScreen(),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 61, 212, 184),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            quizName[index],
            style: GoogleFonts.roboto(fontSize: 28, color: Colors.black),
          ),
        ),
      ),
    ));
  }
}
