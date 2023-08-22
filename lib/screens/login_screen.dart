import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_mazen_momen/global/quiz_data.dart';
import 'package:quiz_app_mazen_momen/screens/category_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 61, 212, 184),
              child: Center(
                child: Image.asset("assets/ghost.png",
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.3),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 2 / 3,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                        width: MediaQuery.of(context).size.width,
                      ),
                      TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your email address!!";
                            } else if (!RegExp(
                                    r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.com)$')
                                .hasMatch(value)) {
                              return "Email address should be as follows:\n 'user@example.com'";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                        width: MediaQuery.of(context).size.width,
                      ),
                      TextFormField(
                          controller: userNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your username!!";
                            } else if (value.length < 9) {
                              return "Username must be at least 9 characters.";
                            } else if (value[0] != value[0].toUpperCase()) {
                              return "First letter must be uppercase";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: "Username",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                        width: MediaQuery.of(context).size.width,
                      ),
                      TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your Password!!";
                            } else if (value.length < 10) {
                              return "Password must be at least 10 characters.";
                            } else if (!RegExp(
                                    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&+=!]).*$')
                                .hasMatch(value)) {
                              return "Password must contain at least:\none lowercase letter, one uppercase letter,\none number, and one special character.";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text("New to quiz app? "),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Register",
                                style: GoogleFonts.roboto(
                                  color:
                                      const Color.fromARGB(255, 61, 212, 184),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                        width: MediaQuery.of(context).size.width,
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
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const CategoryScreen(),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 61, 212, 184),
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Image.asset("assets/fingerprint.png",
                          height: MediaQuery.of(context).size.height * 0.05),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Text(
                        "Use Touch ID",
                        style: GoogleFonts.roboto(
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                                fillColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 61, 212, 184)),
                              ),
                              const Text("Remember me"),
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: GoogleFonts.roboto(
                                    color:
                                        const Color.fromARGB(255, 61, 212, 184),
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
