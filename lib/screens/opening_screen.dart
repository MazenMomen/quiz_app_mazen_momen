import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  final String title;

  const OpeningScreen({Key? key, required this.title}) : super(key: key);

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
            const SizedBox(height: 200.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/logo.png',
                width: 180, // Adjust the width to make the logo smaller
              ),
            ),
            Text(
              'ITI Quiz App',
              style: GoogleFonts.pacifico(fontSize: 30, color: Colors.yellow),
            ),
            const SizedBox(height: 10.0),
            Text(
              'We Are Creative, enjoy our App',
              style: GoogleFonts.dancingScript(
                  color: Colors.white, // Change the text color to white
                  fontSize: 24),
            ),
            const SizedBox(height: 200, width: 500.0),
            ElevatedButton(
              onPressed: () {
                // Add your logic for the button press here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      5.0), // Make the button rectangle with rounded corners
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 150.0, vertical: 1.0),
              ),
              child: const Text(
                'Start',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white, // Change the text color to white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
