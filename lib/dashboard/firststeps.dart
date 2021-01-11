import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class FirstStepScreen extends StatefulWidget {
  @override
  _FirstStepScreenState createState() => _FirstStepScreenState();
}

class _FirstStepScreenState extends State<FirstStepScreen> {
  bool _visible = true;
  bool _visible1 = true;
  bool _visible2 = true;
  bool _visible3 = true;
  bool _visible4 = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "FIRST STEPS",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Montserrat-Regular",
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
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
                            'City Registeration',
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
                      height: 50 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "One needs to register with city’s citizens office within the first two weeks of moving into an apartment. One can get an appointment directly on spot at 8AM.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                "Documents Required:",
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
                                      text: 'Passport.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
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
                                          'Wohnungsgeberbestatigung (Form 19).',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
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
                                            'Burgerburo Mitte, Leiterstrasse 2a',
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
                // Buying Sim
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
                            'Buying Sim',
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
                    child: Container(
                      height: 18 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Just walk in to a nearby O2, Aldi, Vodafone stores to buy a sim.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                "Documents Required:",
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
                                      text: 'Passport.',
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
                Visibility(
                  visible: !_visible1,
                  child: Container(
                    height: 20 * height,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Tip :-",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.info_outline_rounded,
                                              size: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextSpan(
                                              text:
                                                  " You need a phone number to open a bank account.",
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20,
                                                color: Colors.black,
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
                // Bank Account
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
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Bank Account',
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
                    visible: !_visible2,
                    child: Container(
                      height: 40 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "You can open a current account in banks like Deutsche Bank, StadtSparkasse, Commerz Bank etc.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                "Documents Required:",
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
                                      text: 'Letter of Admission.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
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
                                      text: 'City Registration.',
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
                                      text: 'Passport.',
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
                // Unblocking Blocked Account
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
                            'Unblocking Accounts',
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
                      height: 16 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "You need to provide your current account details to your blocked account provider by email or through their respective portals.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Insurance
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
                        _visible4 = !_visible4;
                      });
                    },
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Insurance',
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
                    visible: !_visible4,
                    child: Container(
                      height: 30 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Update your details with your Insurance provider or blocked account provider by email or through their respective portals. If you do not possess a health insurance, we recommend the following",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Visibility(
                    visible: !_visible4,
                    child: Container(
                      height: 18 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
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
                                  text: '1. ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'TK-Techniker Krankenkasse',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Address: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Olvenstedter Str. 66',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Tel: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '0800 2858585',
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
                Visibility(
                  visible: !_visible4,
                  child: Container(
                    height: 20 * height,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Tip :-",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.info_outline_rounded,
                                              size: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextSpan(
                                              text:
                                                  " One can reach TK by Tram 1 from University.",
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20,
                                                color: Colors.black,
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
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Visibility(
                    visible: !_visible4,
                    child: Container(
                      height: 16 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
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
                                  text: '2. ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'AOK',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Address: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Luneburger Str. 4',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Tel: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '0800 2265726',
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
                Visibility(
                  visible: !_visible4,
                  child: Container(
                    height: 20 * height,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Tip :-",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.info_outline_rounded,
                                              size: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextSpan(
                                              text:
                                                  " Walkable distance from the University.",
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20,
                                                color: Colors.black,
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
          debugPrint("Current Index is $index");
        },
      ),
    );
  }
}
