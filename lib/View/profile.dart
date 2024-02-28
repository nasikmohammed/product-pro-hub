import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_1/View/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    )),
                Text(
                  "Back",
                  style: GoogleFonts.teko(fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 270, top: 50),
            child: Text(
              "Your",
              style: GoogleFonts.teko(fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 260,
            ),
            child: Text(
              "Profile",
              style: GoogleFonts.teko(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Padding(
                    padding: EdgeInsets.only(top: 50, right: 200),
                    child: Icon(
                      CupertinoIcons.person_crop_circle_fill,
                      size: 80,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 55),
                child: Icon(
                  Icons.add,
                  color: Colors.grey,
                  size: 30,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30),
            child: Text(
              "Your Name",
              style: GoogleFonts.teko(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 30),
            child: Text(
              "User Id:00000",
              style: GoogleFonts.teko(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.edit),
              SizedBox(
                width: 10,
              ),
              Text(
                "Edit",
                style: GoogleFonts.teko(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 15),
            child: SizedBox(
              width: 140,
              height: 40,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Color.fromARGB(255, 182, 12, 0)),
                  onPressed: () {
                    logout(context);
                  },
                  child: Text(
                    "LOGOUT",
                    style: GoogleFonts.teko(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

logout(context) async {
  final shareout = await SharedPreferences.getInstance();

  final name = shareout.remove("name");
  final mail = shareout.remove("mail");
  final phone = shareout.remove("phone");
  final password = shareout.remove("password");

  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
    builder: (context) {
      return ScreenLogin();
    },
  ), (route) => false);
}
