import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:miniproject_1/View/nonewcomp.dart';


class ScreenDeleteReg extends StatelessWidget {
  const ScreenDeleteReg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 230, 224, 224),
                      ),
                      color: Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: 460,
                  height: 460,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 27,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "BACK",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 39, 43, 72),
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 12, right: 20, top: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 161),
                              child: Text(
                                "Product Name:",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 39, 43, 72)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 38,
                              decoration: BoxDecoration(color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "abc",
                                    hintStyle: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 93, 92, 92)),
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 161, top: 5),
                              child: Text(
                                "Order Number",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 39, 43, 72)),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 38,
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "0000-0000-0000",
                                      hintStyle: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 93, 92, 92)),
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 161, top: 5),
                              child: Text(
                                "Purchase Date",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 39, 43, 72)),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 38,
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "dd/mm/yyyy",
                                      hintStyle: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 93, 92, 92)),
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 161, top: 5),
                              child: Text(
                                "Describe Your Issue:",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 39, 43, 72)),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 110,
                              decoration: BoxDecoration(color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText:
                                        "Lorem ipsum dolor sit amet,\nconsectetuer adipiscing elite.\nAenean commodo ligula eget\ndolor.Aenean massa.Cum sociis\n natoque",
                                    hintMaxLines: 5,
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 93, 92, 92)),
                                    border: OutlineInputBorder()),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Status:"),
                          SizedBox(
                            height: 30,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Ongoing",
                                  style: TextStyle(color: Colors.red),
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 47,
              ),
              Container(
                width: 300,
                height: 50,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: Color.fromARGB(255, 39, 43, 72),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ScreenNoCompl();
                        },
                      ));
                    },
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 50,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: Color.fromARGB(255, 240, 144, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
