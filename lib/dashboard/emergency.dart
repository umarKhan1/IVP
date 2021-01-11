import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class EmergencyContactScreen extends StatefulWidget {
  @override
  _EmergencyContactScreenState createState() => _EmergencyContactScreenState();
}

class _EmergencyContactScreenState extends State<EmergencyContactScreen> {
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
                  Center(
                    child: Text(
                      "EMERGENCY",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Montserrat-Regular",
                          fontWeight: FontWeight.bold),
                    ),
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
                //Hospitals
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
                            'HOSPITALS',
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Hospitals",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2 * height,
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
                                      //first
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
                                                    'Klinikum Magdeburg- Birkenallee 34, 39002',
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
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '+49 3917910',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 18,
                                                )),
                                          ],
                                        ),
                                      ),
                                      //second
                                      SizedBox(
                                        height: 2.5 * height,
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
                                                    'University Womens Hospital,OVGU- Gerhart-Hauptmann-str 35,39108',
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
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '+49 3916717302',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 18,
                                                )),
                                          ],
                                        ),
                                      ),
                                      //third
                                      SizedBox(
                                        height: 2.5 * height,
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
                                                    'Klinik st. Marienstift Magdeburg- Harsdorfer str.10,39110',
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
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '+49 39172627',
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
                // Corona HelpLine
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
                            'CORONA HELPLINE',
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Corona Helpline",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2 * height,
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
                                      //first
                                      RichText(
                                        text: TextSpan(
                                          text: 'Address: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    'Feverclinic, Brandenburger str 8',
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
                                          text: 'Tel: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '03915402000',
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
                                          text: 'Email: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    'Hotline.corona@magdeburg.de',
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
                                          text: 'Timings: ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Mon-Fri 7am-8pm",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Sat-sun 10am-7pm",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Public holidays: 10am-1pm",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18,
                                              color: Colors.black),
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

                // Emergency Numbers
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
                        children: <Widget>[
                          Text(
                            'EMERGENCY NUMBERS',
                            style: TextStyle(
                              fontSize: 17,
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
                      height: 35 * height, //height = 280
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
                            Center(
                              child: Text(
                                "Emergency Numbers",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  // letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2 * height,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: '1. Police: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '110',
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
                                  text: '2. Ambulance & fire services: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '112',
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
                                  text:
                                      '3. Emergency bank card blocking service: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '116116',
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

                // Tip:
                Container(
                  height: 30 * height,
                  color: Colors.grey[200],
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
                        Text(
                          "24/7 open apotheke:",
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
                                                " Apotheke am dom, domplatz 11, 39104 ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20,
                                              color: Colors.black,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2 * height,
                                  ),
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
                                                " Fermerslebener Apotheke, Alt Fermersleben 85, 39122 ",
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
