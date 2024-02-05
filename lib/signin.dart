// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final RegExp _emailRegExp = RegExp(
      r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    final _EmailController = TextEditingController();
    final _PasswordController = TextEditingController();

    String SignIn = "lib/assets/signIn.jpeg";
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 90, right: 90, top: 90),
            child: Image(image: AssetImage(SignIn)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  child: TextFormField(
                    /////validator:  
                   //////  if (_emailRegExp.hasMatch(_EmailController.text)) {
                  //////     },
                      controller: _EmailController,
                      decoration: InputDecoration(
                          //

                          hintText: "Email",
                          hintStyle: TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 92, 90, 90),
                              fontWeight: FontWeight.w900),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  child: TextFormField(
                      controller: _PasswordController,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 92, 90, 90),
                              fontWeight: FontWeight.w900),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "forgot password?",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 45,
                  width: 130,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        backgroundColor: Color.fromARGB(255, 23, 28, 61),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text(
                        "not have an account?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                          onPressed: () {
                         
                          },
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.kanit(
                              fontSize: 18,
                              color: Color.fromARGB(255, 255, 153, 0),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
