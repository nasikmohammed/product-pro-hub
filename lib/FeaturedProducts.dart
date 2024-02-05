import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniproject_1/CuffHealth.dart';
import 'package:miniproject_1/MyCart.dart';

class ScreenFeaturedProducts extends StatelessWidget {
  const ScreenFeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    String FeaturedProd = "lib/assets/featreproo.jpeg";
    String pipe1 = "lib/assets/piiiipiit.jpeg";
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Stack(children: [
          Column(children: [
            SizedBox(
              height: 36,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text("HOME"),
                SizedBox(
                  width: 200,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.search),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ScreenMyCart();
                        },
                      ));
                    },
                    icon: Icon(CupertinoIcons.bag))
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 110, right: 110, top: 10),
                  child: Image.asset(FeaturedProd),
                ),
              ],
            ),
            Container(
                width: 400,
                height: 571,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 244, 244),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 180, top: 20),
                    child: Text(
                      "Featured Products",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return ScreenCuffHealth();
                              },
                            ));
                          },
                          child: Container(
                              width: 160,
                              height: 180,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 249, 249),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  Positioned(
                                      left: 10,
                                      right: 10,
                                      top: 35,
                                      child: Image.asset(pipe1)),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 145, right: 10),
                                        child: Text(
                                          "CUFF HEALTH FAUCET",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.currency_rupee,
                                            size: 15,
                                          ),
                                          Text("2,340.00")
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 248, 245, 245),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child:
                                              Center(child: Text("50%\nOFF")),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 47,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 15, left: 20),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Icon(
                                            Icons.favorite,
                                            size: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            width: 160,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 249, 249),
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 10,
                                    right: 10,
                                    top: 35,
                                    child: Image.asset(pipe1)),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 145, right: 10),
                                      child: Text(
                                        "DECO HEALTH FAUCET",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.currency_rupee,
                                          size: 15,
                                        ),
                                        Text("4,410.00")
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 248, 245, 245),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(child: Text("50%\nOFF")),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 47,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 15, left: 20),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Icon(
                                          Icons.favorite,
                                          size: 15,
                                          color: Color.fromARGB(
                                              255, 188, 184, 184),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ])
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 160,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 251, 251),
                                ///////////////////////////////////////////////////////////////////////////////////////////// ????????????????//
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 145, right: 10),
                                      child: Text(
                                        "Dual Spray Pulldown Single Sink",
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.currency_rupee,
                                          size: 15,
                                        ),
                                        Text("5,340.00")
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 40),
                                  child: Image.asset(pipe1),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Center(child: Text("25%\nOFF")),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 10, left: 15),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Center(
                                            child: Icon(
                                          Icons.favorite,
                                          size: 15,
                                          color: Color.fromARGB(
                                              255, 188, 184, 184),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                            width: 160,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 249, 249),
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 10,
                                    right: 10,
                                    top: 35,
                                    child: Image.asset(pipe1)),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 145, right: 10),
                                      child: Text(
                                        "KICHEN SINK COCK TAP",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.currency_rupee,
                                          size: 15,
                                        ),
                                        Text("3,500.00")
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 248, 245, 245),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(child: Text("25%\nOFF")),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 47,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 15, left: 20),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Icon(
                                          Icons.favorite,
                                          size: 15,
                                          color: Color.fromARGB(
                                              255, 188, 184, 184),
                                        ),
                                      ),
                                    ),
                                    /////4444444444444444444444444444444444444444444444444444444444444444444
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  ]),
                ]))
          ])
        ])));
  }
}
