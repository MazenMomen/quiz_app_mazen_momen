import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_mazen_momen/global/quiz_data.dart';
import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;
  const CategoryContainer({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => QuizScreen(
              categoryMap: quizData[index],
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: quizData[index]["color"],
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            quizData[index]["categoryName"],
            style: GoogleFonts.roboto(fontSize: 28, color: Colors.black),
          ),
        ),
      ),
    ));
  }
}
