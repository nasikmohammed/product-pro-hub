import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniproject_1/ScreenHome.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
          padding: const EdgeInsets.only(top: 30, right: 200),
          child: Text(
            "Notifications",
            style: TextStyle(
                color: Color.fromARGB(255, 74, 72, 72),
                fontSize: 27,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 237, 237),
                        borderRadius: BorderRadius.circular(15)),
                    width: 130,
                    height: 60,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(
                          right: 90,
                        ),
                        child: Text(
                          "Notifications ${index + 1}",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          "messege",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Color.fromARGB(255, 244, 244, 244),
                );
              },
              itemCount: 3),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: SizedBox(
            width: 120,
            height: 35,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    backgroundColor: Color.fromARGB(255, 16, 19, 39)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ScreenHome();
                    },
                  ));
                },
                child: Text(
                  "HOME",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
        )
      ]),
    );
  }
}
