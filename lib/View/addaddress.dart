import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_1/Model/provider.dart';
import 'package:miniproject_1/View/address.dart';
import 'package:provider/provider.dart';

class ScreenAddAddress extends StatelessWidget {
  const ScreenAddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final _name = TextEditingController();
    final _adress = TextEditingController();
    final _flat = TextEditingController();
    final _city = TextEditingController();
    final _pincode = TextEditingController();
    final _area = TextEditingController();
    final _state = TextEditingController();
    final _landmark = TextEditingController();
    final _phone = TextEditingController();

    String adress = "lib/assets/addaddress.jpeg";
    final addressProvider = Provider.of<RegisterProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {
                            print("iconbutton pressed");
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 25,
                          )),
                      Text(
                        "Back",
                        style:
                            GoogleFonts.teko(fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Positioned(
                  right: 13,
                  top: 40,
                  child: Icon(
                    Icons.location_on,
                    shadows: [Shadow(blurRadius: 10, color: Colors.grey)],
                    size: 700,
                    color: Color.fromARGB(255, 229, 228, 228),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 130,
                        right: 130,
                      ),
                      child: Image.asset(adress),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 120,
                      ),
                      child: Text(
                        "Add Address",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 55, right: 60),
                      child: Column(
                        children: [
                          Container(
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 228, 225, 225)),
                            child: TextFormField(
                              controller: _name,
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 228, 225, 225)),
                            child: TextFormField(
                              controller: _adress,
                              decoration: InputDecoration(
                                  hintText: "Address",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 228, 225, 225)),
                            child: TextFormField(
                              controller: _flat,
                              decoration: InputDecoration(
                                  hintText: "Flat/House no.",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 228, 225, 225)),
                            child: TextFormField(
                              controller: _city,
                              decoration: InputDecoration(
                                  hintText: "City",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 228, 225, 225)),
                            child: TextFormField(
                              controller: _pincode,
                              decoration: InputDecoration(
                                  hintText: "Pincode",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 228, 225, 225)),
                            child: TextFormField(
                              controller: _area,
                              decoration: InputDecoration(
                                  hintText: "Area/street",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 228, 225, 225)),
                            child: TextFormField(
                              controller: _state,
                              decoration: InputDecoration(
                                  hintText: "State",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(228, 225, 225, 1)),
                            child: TextFormField(
                              controller: _landmark,
                              decoration: InputDecoration(
                                  hintText: "Landmark",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 228, 225, 225)),
                            child: TextFormField(
                              controller: _phone,
                              decoration: InputDecoration(
                                  hintText: "Phone",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 120,
                      height: 38,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 27, 39, 120),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            addressProvider.adressownerName = _name.text;
                            addressProvider.adrdessplace = _adress.text;
                            addressProvider.addressFlat = _flat.text;
                            addressProvider.addresscity = _city.text;
                            addressProvider.addresspincode = _pincode.text;
                            addressProvider.addressArea = _area.text;
                            addressProvider.addresstate = _state.text;
                            addressProvider.adressslandmark = _landmark.text;
                            addressProvider.addressPhone = _phone.text;
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return ScreenAddress();
                              },
                            ));
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(fontSize: 19, color: Colors.white),
                          )),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
