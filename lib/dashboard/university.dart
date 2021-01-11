import 'package:IVY_interactive_virtual_guide/authscreen/dummyfile.dart';
import 'package:IVY_interactive_virtual_guide/authscreen/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'homescreen.dart';

class UniversityScreen extends StatefulWidget {
  @override
  _UniversityScreenState createState() => _UniversityScreenState();
}

class _UniversityScreenState extends State<UniversityScreen> {
  bool _visible = true;
  bool _visible1 = true;
  bool _visible2 = true;
  bool _visible3 = true;
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text(
            "UNIVERSITY AND STUDY",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: "Montserrat-Regular",
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: <Widget>[
            InkWell(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                )),
            SizedBox(
              width: 2.4 * MediaQuery.of(context).size.width / 100,
            ),
          ],
          elevation: 0,
          backgroundColor: Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                //Campus Service Center done
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Colors.blue[400],
                        Colors.black87,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      setState(() {
                        _visible = !_visible;
                      });
                    },
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Campus Service Center',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Visibility(
                    visible: !_visible,
                    child: Container(
                      height: 28 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "“Your station for all study related queries.”",
                              style: TextStyle(
                                color: Color(0xffFF5733),
                                fontSize: 18,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Address: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Universitatplatz 2, 39106',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Timings: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Mon-Thu 10-12am & 1-3pm Fri 10-12am',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Email: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Servicecenter@ovgu.de',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // University Library
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Colors.blue[400],
                        Colors.black87,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      setState(() {
                        _visible1 = !_visible1;
                      });
                    },
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'University Library',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Visibility(
                    visible: !_visible1,
                    child: SingleChildScrollView(
                      child: Container(
                        height: 45 * height, //height = 280
                        width: double.infinity,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.grey[50],
                          color: Colors.grey[300],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "“THERE IS NO PROBLEM THAT A LIBRARY CARD CAN’T SOLVE”-Eleanor Brown.",
                                style: TextStyle(
                                  color: Color(0xffFF5733),
                                  fontSize: 18,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Address: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Gebaude 30, Universitatplatz 2, 39106',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 18,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Timings: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Mon-Fri 8am-7pm',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 18,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Tel: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '+49 391 6752925',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 18,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Email: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'ausleihe@ovgu.de',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 18,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //Activation of Uni-card
                Visibility(
                  visible: !_visible1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 40 * height, // 250
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Activation of Uni-card",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 1 * height,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: 'Step 1: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    'Scan your Uni-card at the entrance.',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 18,
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1 * height,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: 'Step 2: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    'Hold your card against the black machine on your right and activate it.',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 18,
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1 * height,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: 'Step 3: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    'Once your card is activated, you can use it to lock/unlock lockers in the locker area.',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 18,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //Borrowing
                Visibility(
                  visible: !_visible1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 30 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                "Borrowing",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              "One can find availability and location of the books in the. \n",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Center(
                                child: Container(
                              height: 40,
                              child: RaisedButton(
                                  onPressed: () {
                                    _launchURL("https://ubfind.ovgu.de/");
                                  },
                                  child: Text(
                                    "Visit Site",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      side: BorderSide(color: Colors.black))),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //Two Ways to borrow
                Visibility(
                  visible: !_visible1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 60 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                "Two ways to borrow:",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: '1. ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Circulation desk: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      )),
                                  TextSpan(
                                      text:
                                          'One can borrow, reserve and renew books and media at the circulation desk at the ground floor.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1 * height,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Note: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Green labelled books cannot be borrowed. They are only for reference.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 2 * height,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '2. ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Self-check-out counters: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      )),
                                  TextSpan(
                                      text:
                                          'Please follow the instructions that appear on the monitor.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1 * height,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Note: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'You can borrow electronic media(DVD, CD-ROM, etc) only at the Circulation desk.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //Renew/Return
                Visibility(
                  visible: !_visible1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 60 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                "Renew/Return",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Three ways to renew",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: '1. ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'OnlineRenewal \n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                            Center(
                                child: Container(
                              height: 40,
                              child: RaisedButton(
                                  onPressed: () {
                                    _launchURL(
                                        "https://www.ub.ovgu.de/ub/en/Service/Borrowing+and+Ordering+Media/Borrowing/User+Account-p-172.html");
                                  },
                                  child: Text(
                                    "Visit Site",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      side: BorderSide(color: Colors.black))),
                            )),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 5, bottom: 5),
                            //   child: RichText(
                            //     text: TextSpan(
                            //       text: 'Click Here: ',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.normal,
                            //           fontSize: 18,
                            //           color: Colors.black),
                            //       children: <TextSpan>[
                            //         TextSpan(
                            //             text:
                            //                 'www.ub.ovgu.de/ub/en/Service/Borrowing+and+Ordering+Media/Borrowing/User+Account-p-172.html#',
                            //             style: TextStyle(
                            //               color: Colors.blueAccent,
                            //               decoration: TextDecoration.underline,
                            //               fontWeight: FontWeight.normal,
                            //               fontSize: 18,
                            //             )),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              height: 2 * height,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Note',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Username is the 11 digit number found behind your Uni-card next to the barcode and password is your date of birth in the form(DDMMYY).',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 2 * height,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '2. ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Renewal at the circulation desk.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: '3. ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Renewal by telephone.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1 * height,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Returning: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'books can be returned at the circulation desk.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //Photocopy/Printout
                Visibility(
                  visible: !_visible1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 45 * height,
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Photocopy/Printout",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 1 * height,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: '1. ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    'You need to login with your student ID in one of the computers then select your document and press ‘Print’.',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 18,
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1 * height,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: '2. ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    'You can find the printer>>login>>print your document.',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 18,
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1 * height,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: '3. ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    'Photocopies can be taken in the same way above.',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 18,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // International Students
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Colors.blue[400],
                        Colors.black87,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      setState(() {
                        _visible2 = !_visible2;
                      });
                    },
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'International Student Contacts',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Visibility(
                    visible: !_visible2,
                    child: Container(
                      height: 35 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Eva Bohning",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Address: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Gebaude 13, Universitatplatz 2, 39106, G18-150',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Email: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Eva.boehning@ovgu.de',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Tel: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '+49 391 6758429',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Timings: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Mon 10-12 Tue-Thu 10-12, 13-15.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: !_visible2,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 15 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "For booking a appointment \n",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 5, bottom: 5),
                            //   child: RichText(
                            //     text: TextSpan(
                            //       text: 'Click Here: ',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.normal,
                            //           fontSize: 18,
                            //           color: Colors.black),
                            //       children: <TextSpan>[
                            //         TextSpan(
                            //             text:
                            //                 'https://calendly.com/eva-boehning/30min?back=1&month=2020-12',
                            //             style: TextStyle(
                            //               color: Colors.blueAccent,
                            //               decoration: TextDecoration.underline,
                            //               fontWeight: FontWeight.normal,
                            //               fontSize: 18,
                            //             )),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            Center(
                                child: Container(
                              height: 40,
                              child: RaisedButton(
                                  onPressed: () {
                                    _launchURL(
                                        "https://calendly.com/eva-boehning/30min?back=1&month=2020-12");
                                  },
                                  child: Text(
                                    "Visit Site",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      side: BorderSide(color: Colors.black))),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // MENZA
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Colors.blue[400],
                        Colors.black87,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      setState(() {
                        _visible3 = !_visible3;
                      });
                    },
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'MENZA',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Visibility(
                    visible: !_visible3,
                    child: Container(
                      height: 42 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Address: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Pfalzer str.1, 39106, Magdeburg',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Timings: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Mon-Fri 10:45am-2pm.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'How to buy food?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: '1. ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Firstly, you need to recharge your Uni-card from the machine at the entrance.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: '2. ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Order your desired dish and pay for it at the counter.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xffefefef),
          buttonBackgroundColor: Color(0xffFF5733),
          height: 50,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 25,
              color: Colors.black,
            ),
            Icon(
              Icons.person,
              size: 25,
              color: Colors.black,
            ),
            Icon(
              Icons.comment,
              size: 25,
              color: Colors.black,
            ),
          ],
          animationDuration: Duration(milliseconds: 200),
          index: 0,
          animationCurve: Curves.bounceInOut,
          onTap: (index) {
            if (index == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            }
            if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            }
            if (index == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DummyFile()));
            }
          }),
    );
  }
}
