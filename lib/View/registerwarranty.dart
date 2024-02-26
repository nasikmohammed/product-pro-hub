import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_1/Model/provider.dart';
import 'package:miniproject_1/View/productreg.dart';
import 'package:miniproject_1/View/registerdproducts.dart';
import 'package:provider/provider.dart';

class ScreenRegWarranty extends StatefulWidget {
  ScreenRegWarranty({super.key});

  @override
  State<ScreenRegWarranty> createState() => _ScreenRegWarrantyState();
}

class _ScreenRegWarrantyState extends State<ScreenRegWarranty> {
  final _formkeyy = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<RegisterProvider>(context);
    final _fullname = TextEditingController();
    final _email = TextEditingController();
    final _mobilenumber = TextEditingController();
    final _yourProduct = TextEditingController();
    final _ordernumber = TextEditingController();
    final _serialno = TextEditingController();
    final _purchasedate = TextEditingController();

    final RegExp _emailRegExp = RegExp(
      r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    final RegExp phonergxp = RegExp(r'^[0-9]{10}$');

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
                          padding: const EdgeInsets.only(top: 50),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 30,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Text(
                            "Register Warranty",
                            style: GoogleFonts.teko(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Form(
            key: _formkeyy,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 220),
                    child: Text(
                      "Full Name:",
                      style: GoogleFonts.teko(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Your Name";
                        } else {
                          return null;
                        }
                      },
                      controller: _fullname,
                      decoration: InputDecoration(
                          hintText: "name",
                          hintStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 260),
                  child: Text(
                    "Email",
                    style: GoogleFonts.teko(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                      validator: (value) {
                        if (_emailRegExp.hasMatch(_email.text)) {
                          return null;
                        } else {
                          return "Invalid Email";
                        }
                      },
                      controller: _email,
                      decoration: InputDecoration(
                          hintText: "abc@example.com",
                          hintStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 180),
                  child: Text(
                    "Mobile Number",
                    style: GoogleFonts.teko(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (phonergxp.hasMatch(_mobilenumber.text)) {
                          return null;
                        } else {
                          return "Invalid PhoneNumber";
                        }
                      },
                      controller: _mobilenumber,
                      decoration: InputDecoration(
                          hintText: "phone",
                          hintStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 140),
                  child: Text(
                    "Choose Your Product",
                    style: GoogleFonts.teko(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your product name";
                        } else {
                          return null;
                        }
                      },
                      controller: _yourProduct,
                      decoration: InputDecoration(
                          hintText: "Product Name",
                          hintStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 180),
                  child: Text(
                    "Order Number",
                    style: GoogleFonts.teko(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Type your order number";
                        } else {
                          return null;
                        }
                      },
                      controller: _ordernumber,
                      decoration: InputDecoration(
                          hintText: "0000-0000-0000",
                          hintStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 180),
                  child: Text(
                    "Serial Number",
                    style: GoogleFonts.teko(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Your Serial Number";
                        } else {
                          return null;
                        }
                      },
                      controller: _serialno,
                      decoration: InputDecoration(
                          hintText: "0000-0000-0000",
                          hintStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 180),
                  child: Text(
                    "Purchased Date",
                    style: GoogleFonts.teko(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Type your Purchase Date";
                        } else {
                          return null;
                        }
                      },
                      controller: _purchasedate,
                      decoration: InputDecoration(
                          hintText: "dd/mm/yyyy",
                          hintStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Color.fromARGB(255, 55, 64, 109)),
                      onPressed: () {
                        pro.textvalue = _yourProduct.text;
                        pro.orderno = _ordernumber.text;
                        pro.serialno = _serialno.text;

                        ///   setState(() {

                        if (_formkeyy.currentState!.validate()) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return ScreenProductReg();
                          }));
                        }
                        // });
                      },
                      child: Text(
                        "Confirm",
                        style: GoogleFonts.teko(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
