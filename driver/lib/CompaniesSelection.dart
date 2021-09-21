
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomerSelection.dart';

class CompaniesSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120, //
        backgroundColor: Color(0xff216430),
  flexibleSpace:  Container(
       height: 120,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
              ), child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                 width: 40,
                                    height: 40,
                                child: Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.archive_outlined,
                                      color: Colors.white,
                                        size: 25,
                                    ),
                                  ),
                                  Container(
                                     width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.person_outline_outlined,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ]),
              )),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ),
  ),
      
        
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
            
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Column(children: [
                Text(
                  "Companies Selection",
                  style:
                      GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16)),
                ),
              ])),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Row(children: [
                  Text(
                    "Products List",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                ]),
              ),
              Card(),
              Card(),
              Card(),
              Card(),
              Card(),
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 8, 20, 2),
        height: 155,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff216430),
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0) //
                )),
        /////////////////////// CONTANER TOP TEXT ///////////////////////
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 9, 8, 3),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.7,color: Colors.grey)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Row(
                      children: [
                        Text("Date: ", style: TextStyle(fontSize: 12)),
                        Text("20-09-2020",
                            style: TextStyle(fontSize: 11, color: Colors.grey)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Order: ", style: TextStyle(fontSize: 12)),
                        Text("xyz123",
                            style: TextStyle(fontSize: 11, color: Colors.grey)),
                      ],
                    ),
                  ]),
                ),
              ),
              /////////////////////// WHOLE TEXT ///////////////////////
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Row(children: [
                          Image.asset("images/second.jpg",
                              width: 70, height: 80),
                        ])
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30, right: 20),
                        child: Text(
                          'Dirt Graden xyz',
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(children: [
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CustomerSelection()));
                                },
                                child: Text("Select",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 12)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 16,
                              )
                            ],
                          ),
                        ]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: 20,
                        color: Color(0xff2e9920),
                      ),
                      Text(
                        '  Street 1 hamshire road',
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 20,
                        color: Color(0xff2e9920),
                      ),
                      Text(
                        '  2.4 Km ',
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                      ),
                         Text(
                        '  distance from the driver',
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
