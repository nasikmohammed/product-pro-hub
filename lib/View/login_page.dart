import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_1/View/screenhome.dart';
import 'package:miniproject_1/View/signin.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _formkey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();

  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final RegExp regxp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    final RegExp phonergxp = RegExp(r'^[0-9]{10}$');

    String login = "lib/assets/looginn.jpeg";
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 100),
              child: SizedBox(
                height: 200,
                width: 250,
                child: Image.asset(
                  login,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 237, 237),
                          borderRadius: BorderRadius.circular(15)),
                      height: 50,
                      child: TextFormField(
                        ///<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VALIDATION
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "The name is empty";
                          } else {
                            return null;
                          }
                        },
                        controller: _name,
                        decoration: const InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(255, 92, 90, 90),
                                fontWeight: FontWeight.w900),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 237, 237),
                          borderRadius: BorderRadius.circular(15)),
                      height: 50,
                      child: TextFormField(
                        ///<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VALIDATION
                        validator: (value) {
                          if (regxp.hasMatch(_email.text)) {
                            return null;
                          } else {
                            return "Invalid Email";
                          }
                        },
                        controller: _email,
                        decoration: const InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(255, 92, 90, 90),
                                fontWeight: FontWeight.w900),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 237, 237),
                          borderRadius: BorderRadius.circular(15)),
                      height: 50,
                      child: TextFormField(
                        validator: (value) {
                          if (phonergxp.hasMatch(_phone.text)) {
                            return null;
                          } else {
                            return "Invalid PhoneNumber";
                          }
                        },
                        controller: _phone,
                        decoration: const InputDecoration(
                            hintText: "Phone",
                            hintStyle: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(255, 92, 90, 90),
                                fontWeight: FontWeight.w900),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 237, 237),
                          borderRadius: BorderRadius.circular(15)),
                      height: 50,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Password";
                          } else {
                            return null;
                          }
                        },
                        controller: _password,
                        decoration: const InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(255, 92, 90, 90),
                                fontWeight: FontWeight.w900),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 40,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      backgroundColor: const Color.fromRGBO(25, 174, 182, 1)),
                  onPressed: () {
                    setvalue();
                    if (_formkey.currentState!.validate()) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ScreenHome();
                      }));
                    }
                  },
                  child: const Text(
                    "Confirm",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  const Text(
                    "already have an account?",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const ScreenSignIn();
                          },
                        ));
                      },
                      child: Text("Sign in",
                          style: GoogleFonts.davidLibre(
                            fontSize: 18,
                            color: Colors.amber,
                          )))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  setvalue() async {
    final shared = await SharedPreferences.getInstance();
    shared.setString("name", _name.text);
    shared.setString("mail", _email.text);
    shared.setString("phone", _phone.text);
    shared.setString("password", _password.text);
  }
}
