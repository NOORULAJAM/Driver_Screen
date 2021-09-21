import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerSelection extends StatefulWidget {
  const CustomerSelection({Key? key}) : super(key: key);

  @override
  _CustomerSelectionState createState() => _CustomerSelectionState();
}

bool isChecked = false;

class _CustomerSelectionState extends State<CustomerSelection> {
Future<bool> onbackpress() async{
Navigator.pop(context);
return true;
}
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
    onWillPop: () => Future.value(true),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
           appBar: AppBar(
              
            toolbarHeight: 115, //
          backgroundColor: Color(0xff216430),
      flexibleSpace:  Container(
                  height: 115,
                  decoration: BoxDecoration(
    
                    color: Color(0xff216430),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 20),
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
                                            color: Colors.white,
                                            border: Border.all(
                                                width: 1, color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Icon(
                                          Icons.archive_outlined,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                      ),
                                      SizedBox(
                                          width: 40,
                                        height: 40,
                                        child: RaisedButton(
                                            padding:
                                                EdgeInsets.fromLTRB(5, 5, 5, 5),
                                            child: Icon(
                                              Icons.person_outline_outlined,
                                                size: 25,
                                            ),
                                            disabledTextColor: Colors.white,
                                            disabledColor: Colors.grey,
                                            textColor: Colors.grey,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 0.5,
                                                    color: Colors.green),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                            onPressed:
                                                isChecked ? _function : null),
                                      ),
                                    ]),
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
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
                        "Customers List",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                    ]),
                  ),    Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 2),
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff216430),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0) //
                            )),
                    /////////////////////// CONTANER TOP TEXT ///////////////////////
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(children: [
                                  Row(
                                    children: [
                                      Text("Date: ",
                                          style: TextStyle(fontSize: 12)),
                                      Text("20-09-2020",
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey)),
                                    ],
                                  ),
                                ]),
                                Column(children: [
                                  Row(
                                    children: [
                                      Text("Order: ",
                                          style: TextStyle(fontSize: 12)),
                                      Text("xyz123",
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey)),
                                    ],
                                  ),
                                ]),
                                Column(children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: Checkbox(
                                         activeColor: Color(0xff216430),
                                          value: isChecked,
                                          onChanged: (bool? val) {
                                            setState(() {
                                              isChecked = val!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                              ]),
                        ),
                        /////////////////////// WHOLE TEXT ///////////////////////
                        Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 8),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person_outlined,
                                      size: 20,
                                      color: Color(0xff2e9920),
                                    ),
                                    Text(
                                      'Customer Name',
                                      style: GoogleFonts.nunito(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
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
                                      'Street 1 hamshire road',
                                      style: GoogleFonts.nunito(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
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
                                      '2.4 Km',
                                      style: GoogleFonts.nunito(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'distance from the company',
                                      style: GoogleFonts.nunito(
                                          textStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                
                ],
              ),
            ),
            bottomNavigationBar: Container(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 5, 18, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Row(
                        children: [
                          Text("Product: ",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))),
                          Text(" Dirt Graden xyz",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.green,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Row(
                        children: [
                          Text("Selected Customers: ",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))),
                          Text(" 0",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.green,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))),
                        ],
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: RaisedButton(
                              color: Color(0xffFBFBFB),
                              shape: RoundedRectangleBorder(
                                  side:
                                      BorderSide(width: 0.5, color: Colors.green),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Icon(Icons.chevron_left_outlined,
                                  color: Colors.green),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: RaisedButton(
                                disabledTextColor: Colors.grey,
                                disabledColor: Color(0xffFBFBFB),
                                textColor: Colors.white,
                                color: Color(0xff216430),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.5, color: Colors.green),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Text(
                                  "Pick Now",
                                ),
                                onPressed: isChecked ? _function : null),
                          ),
                        ])
                  ],
                ),
              ),
    
              width: double.maxFinite, //Set width
              decoration: BoxDecoration(
                  color: Color(0xffFBFBFB),
                  border: Border.all(width: 1, color: Color(0xff316430)),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            )),
      ),
    );
  }

  void _function() {}
  void  _onWillPop()
  {
   
  }
}

 

