import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniproject_1/RegisterdProducts.dart';

class ScreenProductReg extends StatelessWidget {
  const ScreenProductReg({super.key});

  @override
  Widget build(BuildContext context) {
    String Ticky = "lib/assets/tick.jpeg";
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 242, 242),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 120, right: 120, top: 170),
            child: Image.asset(Ticky),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Product Registered",
            style: TextStyle(
                color: Color.fromARGB(255, 90, 88, 88),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Successfully",
            style: TextStyle(
                color: Color.fromARGB(255, 90, 88, 88),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    backgroundColor: Color.fromARGB(255, 45, 52, 92)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ScreenRegProduct();
                    },
                  ));
                },
                child: Text(
                  "View Registered Products",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
          )
        ],
      ),
    );
  }
}
