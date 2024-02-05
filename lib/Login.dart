import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    String Login = "lib/assets/LoginAss.jpeg";
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80, top: 50),
            child: Image.asset(
              Login,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 30,
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
                    decoration: InputDecoration(
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
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
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
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
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
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
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
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    backgroundColor: Color.fromARGB(255, 91, 223, 159)),
                onPressed: () {},
                child: Text(
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
                Text(
                  "already have an account?",
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("Sign in",
                        style: GoogleFonts.davidLibre(
                          fontSize: 18,
                          color: Colors.amber,
                        )))
              ],
            ),
          )
        ],
      )),
    );
  }
}
