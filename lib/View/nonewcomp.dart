import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenNoCompl extends StatelessWidget {
  const ScreenNoCompl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              SizedBox(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50),
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
                  left: 370,
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
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 230, 224, 224),
                    ),
                    color: Color.fromARGB(255, 215, 215, 183),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                width: 460,
                height: 500,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                        Text(
                          "Your Complaints",
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(255, 37, 40, 58),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: 300,
                      height: 70,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 15),
                            child: Text(
                              "NO NEW \nCOMPLAINTS",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190, top: 18),
                            child: Text(
                              "Status:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 37, 40, 58),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 230, top: 7),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "NA",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ),
                          ),
                        ],
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
                onPressed: () {},
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
    );
  }
}
