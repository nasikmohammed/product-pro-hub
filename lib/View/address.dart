import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_1/Model/provider.dart';
import 'package:miniproject_1/View/addaddress.dart';
import 'package:provider/provider.dart';

class ScreenAddress extends StatelessWidget {
  ScreenAddress({super.key});
  int count = 0;
  @override
  Widget build(BuildContext context) {
    final adrProvider = Provider.of<RegisterProvider>(context);
    List button = [
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: SizedBox(
          height: 20,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              child: Text(
                "SELECTED",
                style: GoogleFonts.teko(
                    fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)),
              )),
        ),
      ),
      Text("")
    ];
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
            child: Column(
              children: [
                SizedBox(
                  height: 69,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        )),
                    Text(
                      "Back",
                      style: GoogleFonts.teko(
                          fontSize: 30, color: Color.fromARGB(255, 39, 34, 34)),
                    )
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 25, right: 260),
                child: Text(
                  "Your",
                  style: GoogleFonts.teko(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 50),
                    child: Text(
                      "Address",
                      style: GoogleFonts.teko(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 36, 104, 83),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 36, 104, 83),
                      size: 60,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Row(
                    children: [
                      Text(
                        adrProvider.adressownerName!,
                        style: GoogleFonts.teko(),
                      ),
                      Text(
                        adrProvider.adrdessplace!,
                        style: GoogleFonts.teko(),
                      )
                    ],
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          adrProvider.addresscity!,
                          style: GoogleFonts.teko(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "${adrProvider.addresstate!}  ",
                              style: GoogleFonts.teko(),
                            ),
                            Text(
                              adrProvider.addressArea!,
                              style: GoogleFonts.teko(),
                            ),
                          ],
                        ),
                        Text(
                          adrProvider.addresspincode!,
                          style: GoogleFonts.teko(),
                        ),
                        Text(
                          adrProvider.addressPhone!,
                          style: GoogleFonts.teko(),
                        ),
                        button[index]
                      ],
                    ),
                  ),
                  leading: Icon(Icons.location_on_outlined),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 2,
            ),
          ),
          OutlinedButton.icon(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            label: Text(
              "ADD NEW",
              style: GoogleFonts.teko(color: Colors.white, fontSize: 20),
            ),
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                backgroundColor: Color.fromARGB(255, 37, 35, 35)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return ScreenAddAddress();
                },
              ));
            },
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
