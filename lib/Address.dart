import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniproject_1/AddAddress.dart';

class ScreenAddress extends StatelessWidget {
  ScreenAddress({super.key});
  int count = 0;
  @override
  Widget build(BuildContext context) {
    List button = [
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: SizedBox(
          height: 20,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              child: Text(
                "SELECTED",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
      Text("")
    ];
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
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    )),
                Text(
                  "Back",
                  style: TextStyle(
                      color: Color.fromARGB(255, 78, 78, 80),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 25, right: 260),
                child: Text(
                  "Your",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 50),
                    child: Text(
                      "Address",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 36, 104, 83),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 36, 104, 83),
                      size: 60,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Address Name-Name,Place"),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Column(
                      children: [
                        Text(
                          "Address line 1,Area",
                          style: TextStyle(color: Colors.black),
                        ),
                        button[index]
                      ],
                    ),
                  ),
                  leading: Icon(Icons.location_on_outlined),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 2,
            ),
          ),
          OutlinedButton.icon(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            label: Text(
              "ADD NEW",
              style: TextStyle(color: Colors.white),
            ),
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                backgroundColor: Color.fromARGB(255, 37, 35, 35)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return ScreenAddAddress();
                },
              ));
            },
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
