import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniproject_1/AboutUs.dart';
import 'package:miniproject_1/Account.dart';
import 'package:miniproject_1/FeaturedProducts.dart';
import 'package:miniproject_1/RegisterWarranty.dart';
import 'package:miniproject_1/YourCompl.dart';
import 'package:miniproject_1/notifications.dart';
import 'package:miniproject_1/profile.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenShopRegState();
}

class _ScreenShopRegState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 250, 246, 246),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 240, top: 30),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            ),
            SizedBox(
              height: 50,
              width: 250,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 234, 230, 230),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ScreenAccount();
                      },
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.person_crop_circle_fill,
                          color: Color.fromARGB(255, 80, 80, 80),
                        ),
                        Text(
                          "Account",
                          style: TextStyle(
                              color: Color.fromARGB(255, 53, 52, 52),
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 250,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 234, 230, 230),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ScreenAboutUs();
                    },
                  ));
                },
                child: Text(
                  "About us",
                  style: TextStyle(
                      color: Color.fromARGB(255, 53, 52, 52),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ScreenNotification();
                  },
                ));
              },
              icon: Icon(
                CupertinoIcons.bell,
                size: 30,
                color: Color.fromARGB(255, 0, 0, 0),
              ))
        ],
        leading: IconButton(
            onPressed: () {
              setState(() {
                Scaffold.of(context).openDrawer();
              });
            },
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 100),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ScreenFeaturedProducts();
                  },
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 194, 13, 0),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 400,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(right: 250, top: 10),
                  child: Column(
                    children: [
                      Text(
                        "Shop",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        CupertinoIcons.cart,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ScreenRegWarranty();
                  },
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 157, 9),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 400,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(right: 119, top: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Register Warranty",
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140),
                        child: Icon(
                          Icons.app_registration_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ScreenYourComp();
                  },
                ));
              },
              child: Container(
                width: 400,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 90, top: 10),
                  child: Column(
                    children: [
                      Text(
                        "Register Complaints",
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 150),
                        child: Icon(
                          Icons.sms_failed_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 43, 50, 88),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
