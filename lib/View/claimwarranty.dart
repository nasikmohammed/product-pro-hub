import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_1/Model/provider.dart';
import 'package:miniproject_1/View/requestsub.dart';
import 'package:miniproject_1/View/screenhome.dart';
import 'package:provider/provider.dart';

class ScreenClaimWarranty extends StatelessWidget {
  const ScreenClaimWarranty({super.key});

  @override
  Widget build(BuildContext context) {
    final claimprovider = Provider.of<RegisterProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 0,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 235, 232, 232),
                ),
                color: Color.fromARGB(255, 244, 241, 241),
                borderRadius: BorderRadius.all(Radius.circular(40))),
            width: 450,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                        )),
                    Text("Claim warranty",
                        style: GoogleFonts.teko(
                            fontSize: 25, fontWeight: FontWeight.w400)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 330,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black)),
            height: 135,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Product name   :  ",
                          style: GoogleFonts.teko(
                            fontSize: 20,
                          )),
                      Text(claimprovider.textvalue!,
                          style: GoogleFonts.caveat(
                            fontSize: 20,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Text("Order no              :  ",
                          style: GoogleFonts.teko(
                            fontSize: 20,
                          )),
                      Text(claimprovider.orderno!,
                          style: GoogleFonts.teko(
                            fontSize: 20,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Text("Serial no             :  ",
                          style: GoogleFonts.teko(
                            fontSize: 20,
                          )),
                      Text(claimprovider.serialno,
                          style: GoogleFonts.teko(
                            fontSize: 20,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Text("Warranty no      :   ",
                          style: GoogleFonts.teko(
                            fontSize: 20,
                          )),
                      Text("1",
                          style: GoogleFonts.teko(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 53),
            child: Row(
              children: [
                SizedBox(
                  width: 130,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return ScreenRequestSub();
                          },
                        ));
                      },
                      child: Text("Claim",
                          style: GoogleFonts.teko(
                            fontSize: 20,
                          ))),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 130,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel",
                          style: GoogleFonts.teko(
                            fontSize: 20,
                          ))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
          ),
          SizedBox(
            width: 310,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 42, 46, 69),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ScreenHome();
                    },
                  ));
                },
                child: Text("Home",
                    style: GoogleFonts.teko(
                        fontSize: 25, fontWeight: FontWeight.bold))),
          )
        ],
      ),
    );
  }
}
