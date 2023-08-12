import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[700],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.31,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Image.asset("assets/ghost.png",
                      height: MediaQuery.of(context).size.height * 0.18),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const TextField(
                          decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      const TextField(
                          decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          const Text("New to quiz app? "),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Register",
                                style: GoogleFonts.roboto(
                                  color: Colors.green[500],
                                ),
                              )),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.04,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.4), // Set the shadow color
                              spreadRadius:
                                  6, // Set the spread radius of the shadow
                              blurRadius:
                                  6, // Set the blur radius of the shadow
                              offset: const Offset(
                                  0, 6), // Set the offset of the shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(
                              50), // Set button border radius
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[500],
                          ),
                          child: Text(
                            "Login",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Image.asset("assets/fingerprint.png",
                          height: MediaQuery.of(context).size.height * 0.05),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        "Use Touch ID",
                        style: GoogleFonts.roboto(
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                                fillColor: MaterialStateProperty.all(
                                    Colors.green[500]),
                              ),
                              const Text("Remember me"),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forgot Password?",
                                    style: GoogleFonts.roboto(
                                        color: Colors.green[500],
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
