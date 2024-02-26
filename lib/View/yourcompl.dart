import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:miniproject_1/View/deletedreg.dart';
import 'package:miniproject_1/View/newcomp.dart';

class ScreenYourComp extends StatelessWidget {
  String? productname = "No Name";
  String? date = "No Date";
  ScreenYourComp({required this.productname, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 55),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: "   Search",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 345,
                  ),
                  child: Icon(
                    Icons.home_filled,
                    size: 40,
                    color: Color.fromARGB(255, 72, 70, 70),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 242, 242, 239),
                      ),
                      color: Color.fromARGB(255, 242, 242, 239),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: 500,
                  height: 600,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.arrow_back_ios)),
                          Text(
                            "Your Complaints",
                            style: TextStyle(
                                fontSize: 23,
                                color: Color.fromARGB(255, 37, 40, 58),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return ScreenDeleteReg();
                            },
                          ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 300,
                          height: 70,
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 15),
                                child: productname == null
                                    ? Text("No Name")
                                    : Text(
                                        productname!,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 140, top: 18),
                                child: Text(
                                  "Status:",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 37, 40, 58),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 190, top: 5),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Ongoing",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 140, top: 43),
                                child: Text(date!,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 37, 40, 58),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    )),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 270,
              height: 42,
              child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Color.fromARGB(255, 255, 162, 21)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ScreenNewComp();
                      },
                    ));
                  },
                  icon: Icon(
                    Icons.add,
                    size: 32,
                    color: Colors.white,
                  ),
                  label: Text(
                    "New Complaint",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
