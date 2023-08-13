import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_mazen_momen/screens/login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.black, // Set the app bar background color to black
      ),
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
          children: <Widget>[
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        5.0), // Make the button rectangle with rounded corners
                  ),
                ),
                child: const Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Change the text color to white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
