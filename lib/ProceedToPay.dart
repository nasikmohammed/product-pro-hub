import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniproject_1/order.dart';

class ScreenProceedToPay extends StatelessWidget {
  const ScreenProceedToPay({super.key});

  @override
  Widget build(BuildContext context) {
    String confirm = "lib/assets/confirmorder.jpeg";
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
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 15),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 25,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Text(
                            "Confirm your",
                            style: TextStyle(
                                color: Color.fromARGB(255, 42, 46, 68),
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 210,
                      ),
                      child: Text(
                        "Order",
                        style: TextStyle(
                            color: Color.fromARGB(255, 42, 46, 68),
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 70),
            child: Image.asset(
              confirm,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40, top: 25),
            child: Text(
              "Address Name - Firstname Lastname",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(Icons.location_pin),
                Padding(
                  padding: const EdgeInsets.only(right: 190),
                  child: Text("Address line 1, Area"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: SizedBox(
              height: 20,
              width: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 20, 112, 23),
                      shape: RoundedRectangleBorder()),
                  onPressed: () {},
                  child: Text("SELECTED")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 25),
            child: Row(
              children: [
                Icon(
                  Icons.currency_rupee,
                  size: 19,
                ),
                Text(
                  "2,340.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  " TO PAY",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  width: 18,
                ),
                SizedBox(
                  height: 40,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color.fromARGB(255, 255, 153, 0)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return ScreenOrderSucsessfull();
                          },
                        ));
                      },
                      child: Text(
                        "PROCEED TO PAY",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
