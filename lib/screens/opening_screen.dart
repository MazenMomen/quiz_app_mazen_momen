import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/logo.png',
                width: MediaQuery.of(context).size.width *
                    0.3, // Adjust the width to make the logo smaller
              ),
            ),
            Text(
              'ITI Quiz App',
              style: GoogleFonts.pacifico(fontSize: 30, color: Colors.yellow),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'We Are Creative, enjoy our App',
              style: GoogleFonts.dancingScript(
                  color: Colors.white, // Change the text color to white
                  fontSize: 24),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
