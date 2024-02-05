import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniproject_1/RegisterWarranty.dart';

class ScreenRegProduct extends StatelessWidget {
  const ScreenRegProduct({super.key});

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
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 27,
                      )),
                  Text(
                    "Registered\n Products",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 153, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            width: 330,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 243, 243),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color.fromARGB(255, 244, 240, 240),
                ),
                boxShadow: [BoxShadow(blurRadius: 1)]),
            height: 130,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product name :",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Order no:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Serial no:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border:
                            Border.all(color: Color.fromARGB(255, 183, 13, 1))),
                    child: SizedBox(
                      height: 30,
                      width: 165,
                      child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          )),
                          onPressed: () {},
                          icon: Icon(Icons.add,
                              size: 17, color: Color.fromARGB(255, 190, 13, 0)),
                          label: Text(
                            "claim warranty",
                            style: TextStyle(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 176, 12, 0)),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 350,
          ),
          SizedBox(
            width: 310,
            height: 50,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 65, 76, 135),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ScreenRegWarranty();
                    },
                  ));
                },
                icon: Icon(Icons.add),
                label: Text(
                  "New Product",
                  style: TextStyle(fontSize: 18),
                )),
          )
        ],
      ),
    );
  }
}
