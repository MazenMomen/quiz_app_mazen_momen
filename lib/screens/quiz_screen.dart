import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_mazen_momen/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  final Map categoryMap;
  const QuizScreen({super.key, required this.categoryMap});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  int totalScore = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: widget.categoryMap["color"],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${index + 1}/${(widget.categoryMap["data"] as List).length}",
              style:
                  GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.categoryMap["categoryName"],
              style:
                  GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.quiz)
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: widget.categoryMap["color"]),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.16,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.02,
                    vertical: MediaQuery.of(context).size.height * 0.02),
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Center(
                  child: ListView(children: [
                    Text(widget.categoryMap["data"][index]["Question"],
                        style: GoogleFonts.roboto(fontSize: 28)),
                  ]),
                )),
            Expanded(
                child: Column(
              children: [
                const Spacer(),
                Text("Choices : ",
                    style: GoogleFonts.roboto(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                for (int i = 0;
                    i <
                        (widget.categoryMap["data"][index]["Answers"] as List)
                            .length;
                    i++)
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.09,
                    margin: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.02,
                        horizontal: MediaQuery.of(context).size.width * 0.02),
                    child: ElevatedButton(
                      onPressed: () {
                        totalScore += (widget.categoryMap["data"][index]
                            ["Answers"][i]["Score"] as int);
                        if ((index + 1) <
                            (widget.categoryMap["data"] as List).length) {
                          setState(() {
                            index++;
                          });
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => ResultScreen(
                                totalScore: totalScore,
                                fullMark:
                                    (widget.categoryMap["data"] as List).length,
                              ),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: widget.categoryMap["color"],
                      ),
                      child: Text(
                        widget.categoryMap["data"][index]["Answers"][i]["Ans"],
                        style: GoogleFonts.roboto(
                            fontSize: 24, color: Colors.black),
                      ),
                    ),
                  ),
                const Spacer()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
