import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenRequestSub extends StatelessWidget {
  const ScreenRequestSub({super.key});

  @override
  Widget build(BuildContext context) {
    String tick = "lib/assets/tick.jpeg";
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 235, 232, 232),
                ),
                color: Color.fromARGB(255, 244, 241, 241),
                borderRadius: BorderRadius.all(Radius.circular(40))),
            width: 450,
            height: 150,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_back_ios_new_sharp),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color: Color.fromARGB(255, 61, 69, 109),
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 120, right: 120),
            child: Image.asset(tick),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Requested submitted!",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "We will contact you shortly.",
            style: TextStyle(
                color: Color.fromARGB(255, 55, 54, 54),
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 90,
          ),
          SizedBox(
            width: 299,
            height: 50,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    backgroundColor: Color.fromARGB(255, 47, 46, 46)),
                onPressed: () {},
                child: Text(
                  "Done",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          )
        ],
      )),
    );
  }
}
