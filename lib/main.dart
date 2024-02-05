import 'package:flutter/material.dart';
import 'package:miniproject_1/AboutUs.dart';
import 'package:miniproject_1/Account.dart';
import 'package:miniproject_1/AddAddress.dart';

import 'package:miniproject_1/Address.dart';
import 'package:miniproject_1/CuffHealth.dart';
import 'package:miniproject_1/DeletedReg.dart';
import 'package:miniproject_1/FeaturedProducts.dart';
import 'package:miniproject_1/Login.dart';
import 'package:miniproject_1/MyCart.dart';
import 'package:miniproject_1/NoNewComp.dart';
import 'package:miniproject_1/Payment.dart';
import 'package:miniproject_1/ProceedToPay.dart';
import 'package:miniproject_1/RegisterWarranty.dart';
import 'package:miniproject_1/RegisterdProducts.dart';
import 'package:miniproject_1/ScreenOrders.dart';
import 'package:miniproject_1/ScreenHome.dart';
import 'package:miniproject_1/YourCompl.dart';
import 'package:miniproject_1/claimWarranty.dart';
import 'package:miniproject_1/NewComp.dart';
import 'package:miniproject_1/notifications.dart';
import 'package:miniproject_1/order.dart';
import 'package:miniproject_1/RequestSub.dart';
import 'package:miniproject_1/productReg.dart';
import 'package:miniproject_1/productcare.dart';
import 'package:miniproject_1/profile.dart';
import 'package:miniproject_1/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ScreenHome());
  }
}
