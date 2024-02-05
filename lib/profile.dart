import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

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
          Padding(
            padding: const EdgeInsets.only(right: 300, top: 50),
            child: Text(
              "Your",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 280,
            ),
            child: Text(
              "Profile",
              style: TextStyle(
                color: Color.fromARGB(255, 72, 91, 126),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Padding(
                    padding: EdgeInsets.only(top: 50, right: 200),
                    child: Icon(
                      CupertinoIcons.person_crop_circle_fill,
                      size: 80,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 55),
                child: Icon(
                  Icons.add,
                  color: Colors.grey,
                  size: 30,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30),
            child: Text("Your Name",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 30),
            child: Text("User Id:00000",
                style: TextStyle(
                  color: Color.fromARGB(255, 65, 62, 62),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.edit),
              Text(
                "Edit",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 15),
            child: SizedBox(
              width: 140,
              height: 40,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Color.fromARGB(255, 182, 12, 0)),
                  onPressed: () {},
                  child: Text(
                    "LOGOUT",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
