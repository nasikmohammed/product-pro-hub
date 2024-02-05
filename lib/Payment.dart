import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenPayment extends StatelessWidget {
  const ScreenPayment({super.key});

  @override
  Widget build(BuildContext context) {
    String UPI = "lib/assets/UPI.jpeg";
    return Scaffold(
      backgroundColor: Colors.white,
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
                      size: 30,
                    )),
                Text(
                  "Payment",
                  style: TextStyle(
                      color: Color.fromARGB(255, 76, 83, 126),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Row(
                children: [
                  Radio(
                    value: ValueKey,
                    groupValue: true,
                    onChanged: (value) {},
                  ),
                  Text("Cash on delivery")
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Radio(
                      value: ValueKey,
                      groupValue: true,
                      onChanged: (value) {},
                    ),
                    Text("Net banking")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    Radio(
                      value: ValueKey,
                      groupValue: false,
                      onChanged: (value) {},
                    ),
                    Text("UPI")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child:
                    SizedBox(height: 150, width: 150, child: Image.asset(UPI)),
              )
            ],
          ),
          SizedBox(
            height: 450,
          ),
          SizedBox(
            height: 40,
            width: 130,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "SUBMIT",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
