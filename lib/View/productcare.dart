import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_1/View/login_page.dart';
import 'package:miniproject_1/View/screenhome.dart';

import 'package:shared_preferences/shared_preferences.dart';


class ScreenProduct extends StatefulWidget {
  const ScreenProduct({super.key});

  @override
  State<ScreenProduct> createState() => _ScreenProductState();
}

class _ScreenProductState extends State<ScreenProduct> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String product = "lib/assets/product.jpeg";
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 350, left: 130),
            child: Text(
              "PRODUCT",
              style: GoogleFonts.dmSerifDisplay(
                  color: Color.fromARGB(255, 225, 225, 225),
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 95, right: 100),
            child: Image(
              image: AssetImage(product),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 370, left: 130),
            child: Text(
              "PRODUCT",
              style: GoogleFonts.dmSerifDisplay(
                  color: Color.fromARGB(255, 225, 225, 225),
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 360, left: 130),
            child: Text(
              "PRODUCT",
              style: GoogleFonts.dmSerifDisplay(
                  color: Color.fromARGB(255, 63, 69, 104),
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 130),
            child: Text(
              "CARE PRO.",
              style: GoogleFonts.dmSerifDisplay(
                  color: Color.fromARGB(255, 63, 69, 104),
                  fontSize: 29,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550, left: 110),
            child: Text(
              "Stay Covered,Stay Connected\n                    With us.",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 600, left: 150),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Color.fromARGB(255, 255, 153, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    getvalue(context);
                  },
                  child: Text(
                    "Let's Go!",
                    style: GoogleFonts.robotoSlab(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ))),
        ],
      )),
    );
  }

  getvalue(context) async {
    final share = await SharedPreferences.getInstance();
    final name = share.getString("name");
    final mail = share.getString("mail");
    final phone = share.getString("phone");
    final password = share.getString("password");

    if (name == null && mail == null && phone == null && password == null) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return ScreenLogin();
        },
      ));
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return ScreenHome();
        },
      ));
    }
  }
}
