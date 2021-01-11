import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class GermanPhrasesScreen extends StatefulWidget {
  @override
  _GermanPhrasesScreenState createState() => _GermanPhrasesScreenState();
}

class _GermanPhrasesScreenState extends State<GermanPhrasesScreen> {
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
                    "GERMAN PHRASES",
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
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                // 1st phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                      ),
                        gradient: LinearGradient(colors: [
                          Color(0xffFF5733),
                          Color(0xffEB124B),
                        ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Excuse me/sorry!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Entschuldigung",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // 2nd phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                        gradient: LinearGradient(colors: [
                          Colors.grey[500],
                          Color(0xffFF5733),
                        ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Thank you",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Danke schon",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // 3rd phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff7b4397),
                        Color(0xffdc2430),
                      ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Please/Welcome",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Bitte",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //  4th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff2193b0),
                        Color(0xff6dd5ed),
                      ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yes/No",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Ja/Nein",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // 5th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xffcc2b5e),
                        Color(0xff753a88),
                      ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My name is",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Ich heiße",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //  6th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff42275a),
                        Color(0xff734b6d),
                      ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "I come from",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Ich komme aus",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // 7th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xffbdc3c7),
                        Color(0xff2c3e50),
                      ]),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "I want to open an account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Ich mochte ein konto eroffnen",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //  8th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xffde6262),
                        Color(0xffffb88c),
                      ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good day",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Guten tag",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // 9th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff06beb6),
                        Color(0xff48b1bf),
                      ]),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "How much does it cost?",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Wie viel kostet das?",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //  10th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xffeb3349),
                        Color(0xfff45c43),
                      ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Can you please help me with this?",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 1.5 * height,
                            ),
                            Text(
                              "Konnen sie mir bitte dabei helfen?",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // 11th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff614385),
                        Color(0xff516395),
                      ]),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Bye",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Tschuss",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //  12th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff02aab0),
                        Color(0xff00cdac),
                      ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "I am sorry",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Es tut mir leid",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // 13th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff000428),
                        Color(0xff004e92),
                      ]),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Where can I find milk?",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 1.4 * height,
                            ),
                            Text(
                              "Wo finde ich milch?",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // 14th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff43cea2),
                        Color(0xff185a9d),
                      ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "I would like to have an appointment?",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 1.5 * height,
                            ),
                            Text(
                              "Ich mochte einen termin machen?",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // 15th phrase
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    height: 15 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff4568dc),
                        Color(0xffb06ab3),
                      ]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Could you please speak in English?",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 1.5 * height,
                            ),
                            Text(
                              "Konnen sie bitten English sprechen?",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-Bold",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
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
