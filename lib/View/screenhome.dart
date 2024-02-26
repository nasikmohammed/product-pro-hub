import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_1/AboutUs.dart';

import 'package:miniproject_1/View/account.dart';
import 'package:miniproject_1/View/featuredproducts.dart';
import 'package:miniproject_1/View/login_page.dart';
import 'package:miniproject_1/View/notifications.dart';
import 'package:miniproject_1/View/registerwarranty.dart';
import 'package:miniproject_1/View/yourcompl.dart';

import 'package:shared_preferences/shared_preferences.dart';

final scaffoldKey = GlobalKey<ScaffoldState>();

class ScreenHome extends StatefulWidget {
  ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenShopRegState();
}

class _ScreenShopRegState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
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
              ),
              SizedBox(
                height: 20,
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
                    logout();
                  },
                  child: Text(
                    "Logout",
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
      ),
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
                scaffoldKey.currentState!.openDrawer();
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
        padding: const EdgeInsets.only(left: 40, right: 40, top: 130),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 300),
              child: Icon(
                Icons.auto_awesome_outlined,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 350,
              ),
              child: Icon(
                Icons.shopify_outlined,
                size: 300,
                shadows: [
                  Shadow(
                      blurRadius: 5, color: Color.fromARGB(255, 164, 168, 163))
                ],
                color: Color.fromARGB(255, 202, 202, 199),
              ),
            ),
            Column(
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
                        color: Color.fromARGB(255, 179, 64, 56),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 400,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 230, top: 10),
                      child: Column(
                        children: [
                          Text(
                            "Shop",
                            style: GoogleFonts.teko(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
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
                        color: Color.fromARGB(255, 203, 146, 67),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 400,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 100, top: 10),
                      child: Column(
                        children: [
                          Text(
                            "Register Warranty",
                            maxLines: 1,
                            style: GoogleFonts.teko(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 140),
                            child: Icon(
                              CupertinoIcons.tickets,
                              color: Colors.white,
                              size: 40,
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
                        return ScreenYourComp(
                          productname: "",
                          date: "",
                        );
                      },
                    ));
                  },
                  child: Container(
                    width: 400,
                    height: 100,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 90, top: 10),
                      child: Column(
                        children: [
                          Text(
                            "Register Complaints",
                            maxLines: 1,
                            style: GoogleFonts.teko(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 150),
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
                        color: Color.fromARGB(255, 147, 156, 206),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }

  logout() async {
    final shareout = await SharedPreferences.getInstance();

    final name = shareout.remove("name");
    final mail = shareout.remove("mail");
    final phone = shareout.remove("phone");
    final password = shareout.remove("password");

    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (context) {
        return ScreenLogin();
      },
    ), (route) => false);
  }
}
