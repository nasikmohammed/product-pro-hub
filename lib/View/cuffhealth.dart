import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniproject_1/View/mycart.dart';
import 'package:miniproject_1/View/ordernow.dart';

class ScreenCuffHealth extends StatelessWidget {
  const ScreenCuffHealth({super.key});

  @override
  Widget build(BuildContext context) {
    String Pipine = "lib/assets/piiiipiit.jpeg";
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 350),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                ),
              ),
              Container(
                  width: 500,
                  height: 792,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 244, 244),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 244, 241, 241),
                              borderRadius: BorderRadius.circular(15)),
                          width: 350,
                          height: 280,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 270, top: 10),
                                child: Container(
                                  width: 80,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                      child: Text(
                                    "50% OFF",
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 60, right: 60),
                                child: Image.asset(Pipine),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "CUFF HEALTH FAUCET",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 186, 184, 184),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color:
                                            Color.fromARGB(255, 186, 184, 184),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17, top: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Text(
                              "2,340.00",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35, right: 60),
                        child: Text(
                          "CUFF HEALTH FAUCET IN WHITE IN SILVER",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 200, bottom: 20),
                        child: Text(
                          "Features",
                          style: TextStyle(
                              color: Color.fromARGB(255, 79, 78, 78),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 330,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 229, 228, 226),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 20),
                          child: Text(
                            """easy function and sleek style into your kitchen,combining single lever control with modern design.Ergonomically designed with superior dimensions for cleaning utensils without bending Full metel body resist corrosion delivering higher perfomance in togh indian condition""",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35, left: 37),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 45,
                              width: 150,
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.deepOrange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  onPressed: () {
                                    Buy(context);
                                  },
                                  child: Text(
                                    "BUY",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              height: 45,
                              width: 150,
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.deepOrange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return ScreenMyCart();
                                      },
                                    ));
                                  },
                                  child: Text(
                                    "ADD TO BAG",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Buy(context) {
  showModalBottomSheet(
    shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25))),
    backgroundColor: Color.fromARGB(255, 244, 241, 241),
    context: context,
    builder: (context) {
      return Container(
        height: 250,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "   Select Delivery Address",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    label: Text(
                      "ADD NEW",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 110, top: 20),
              child: Text(
                "Address Name - Firstname Lastname",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.location_on),
                Text("Address line 1, Area")
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 25,
              width: 340,
              child: Padding(
                padding: const EdgeInsets.only(right: 240),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 69, 207, 71)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ScreenOrderNow();
                        },
                      ));
                    },
                    child: Text(
                      "SELECTED",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Text(
                "Address Name - Firstname Lastname",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.location_on),
                Text("Address line 1, Area")
              ],
            ),
          ],
        ),
      );
    },
  );
}
