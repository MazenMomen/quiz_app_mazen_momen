import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_mazen_momen/global/quiz_data.dart';
import 'package:quiz_app_mazen_momen/screens/category_screen.dart';
import 'package:quiz_app_mazen_momen/widgets/alert_dialog.dart';

class ResultScreen extends StatelessWidget {
  final int totalScore;
  final int fullMark;
  const ResultScreen(
      {super.key, required this.totalScore, required this.fullMark});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool? exit = await showExitConfirmationDialog(context);
        if (exit == true) {
          SystemNavigator.pop();
        }
        return false;
      },
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Congratulations, ",
                      style: GoogleFonts.roboto(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: userNameController.text,
                            style: GoogleFonts.roboto(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 61, 212, 184),
                                decoration: TextDecoration.underline,
                                fontStyle: FontStyle.italic)),
                        TextSpan(
                            text: "\n\nYour Score is $totalScore / $fullMark",
                            style: GoogleFonts.roboto(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black))
                      ])),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
                width: MediaQuery.of(context).size.width * .9,
                child: ElevatedButton(
                  onPressed: () {
                    dispose();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const CategoryScreen()),
                        (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: const Color.fromARGB(255, 61, 212, 184),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Play again",
                    style: GoogleFonts.roboto(
                        fontSize: 38,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void dispose() {
    userNameController.clear();
  }
}
