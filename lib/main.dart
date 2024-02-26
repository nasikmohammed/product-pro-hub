import 'package:flutter/material.dart';
import 'package:miniproject_1/Model/provider.dart';

import 'package:miniproject_1/View/productcare.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<RegisterProvider>(create: (context) => RegisterProvider(),)
    ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: ScreenProduct()),
    );
  }
}
