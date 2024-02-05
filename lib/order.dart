import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_1/FeaturedProducts.dart';

class ScreenOrderSucsessfull extends StatelessWidget {
  const ScreenOrderSucsessfull({super.key});

  @override
  Widget build(BuildContext context) {
    String bluetick = "lib/BLUE.webp";
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
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
                    "Order",
                    style: TextStyle(
                        color: Color.fromARGB(255, 61, 69, 109),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Text(
                  "Successfull!!!",
                  style: GoogleFonts.beVietnamPro(
                      color: Color.fromARGB(255, 255, 153, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 28),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 7.4,
      ),
      Container(
          width: 500,
          height: 500,
          color: Colors.white,
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  height: 200,
                  width: 700,
                  child: Image(
                      image: AssetImage(
                    bluetick,
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "DONE!",
                style: GoogleFonts.ubuntu(
                    fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 150,
                height: 42,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 153, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ScreenFeaturedProducts();
                        },
                      ));
                    },
                    child: Text(
                      "SHOP",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
              )
            ],
          ))),
    ])));
  }
}
