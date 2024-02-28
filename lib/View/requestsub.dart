import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_1/View/screenhome.dart';

class ScreenRequestSub extends StatelessWidget {
  const ScreenRequestSub({super.key});

  @override
  Widget build(BuildContext context) {
    String tick = "lib/assets/tick.jpeg";
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 242, 242),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 235, 232, 232),
                ),
                color: Color.fromARGB(255, 239, 235, 235),
                borderRadius: BorderRadius.all(Radius.circular(40))),
            width: 450,
            height: 150,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.arrow_back_ios_new_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Home",
                        style: GoogleFonts.teko(
                          fontSize: 30,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160, left: 120, right: 120),
            child: Image.asset(tick),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Requested submitted!",
              style:
                  GoogleFonts.teko(fontSize: 30, fontWeight: FontWeight.bold)),
          Text("We will contact you shortly.",
              style: GoogleFonts.teko(
                fontSize: 20,
              )),
          SizedBox(
            height: 120,
          ),
          SizedBox(
            width: 299,
            height: 50,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    backgroundColor: Color.fromARGB(255, 47, 46, 46)),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                    builder: (context) {
                      return ScreenHome();
                    },
                  ), (route) => false);
                },
                child: Text("Done",
                    style:
                        GoogleFonts.teko(fontSize: 30, color: Colors.white))),
          )
        ],
      ),
    );
  }
}
