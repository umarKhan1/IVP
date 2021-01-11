import 'package:IVY_interactive_virtual_guide/authscreen/dummyfile.dart';
import 'package:IVY_interactive_virtual_guide/authscreen/loginscreen.dart';
import 'package:IVY_interactive_virtual_guide/authscreen/profile.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/coronascreen.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/emergency.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/firststeps.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/fitnessscreen.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/germanscreen.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/groceriesscreen.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/travel.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/university.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Container(
            child: Center(
                child: Text(
              "HALLO!",
              style: TextStyle(color: Colors.black),
            )),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(),
          actions: <Widget>[
            InkWell(
                onTap: () {
                  setState(() {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  });
                },
                child: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                  size: 30,
                )),
            SizedBox(
              width: 2.4 * MediaQuery.of(context).size.width / 100,
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.all(20),
        childAspectRatio: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget>[
          // Travel
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TravelScreen()));
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: new LinearGradient(colors: [
                  Colors.grey[800],
                  Colors.black,
                ], begin: Alignment.centerLeft, end: new Alignment(1.0, 1.0)),
              ),
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage("assets/Travel.JPG"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Padding(
                            //   padding: EdgeInsets.only(left: 16),
                            //   child: Text(
                            //     "hello my sweety",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 20,
                            //         fontWeight: FontWeight.bold),
                            //   ),

                            // )
                            Container(
                                child: Text(
                              "Travel",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              child: Icon(
                                Icons.airplanemode_active,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Corona Form
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CoronaForm()));
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: new LinearGradient(colors: [
                  Colors.grey[800],
                  Colors.black,
                ], begin: Alignment.centerLeft, end: new Alignment(1.0, 1.0)),
              ),
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage("assets/CoronaForm.JPG"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: Text(
                              "Corona Form",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              child: Icon(
                                Icons.masks,
                                color: Colors.white,
                                size: 30,
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
          //First Steps
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstStepScreen()));
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: new LinearGradient(colors: [
                  Colors.grey[800],
                  Colors.black,
                ], begin: Alignment.centerLeft, end: new Alignment(1.0, 1.0)),
              ),
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage("assets/FirstSteps.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: Text(
                              "First Steps",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              child: Icon(
                                Icons.stairs,
                                color: Colors.white,
                                size: 30,
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
          // university & study
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UniversityScreen()));
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: new LinearGradient(colors: [
                  Colors.grey[800],
                  Colors.black,
                ], begin: Alignment.centerLeft, end: new Alignment(1.0, 1.0)),
              ),
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage("assets/uni.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Padding(
                            //   padding: EdgeInsets.only(left: 16),
                            //   child: Text(
                            //     "hello my sweety",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 20,
                            //         fontWeight: FontWeight.bold),
                            //   ),

                            // )
                            Container(
                                child: Text(
                              "University & Study",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              child: Icon(
                                Icons.my_library_books,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Groceries
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GroceriesScreen()));
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: new LinearGradient(colors: [
                  Colors.grey[800],
                  Colors.black,
                ], begin: Alignment.centerLeft, end: new Alignment(1.0, 1.0)),
              ),
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage("assets/Groceries.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: Text(
                              "Groceries",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              child: Icon(
                                Icons.local_grocery_store,
                                color: Colors.white,
                                size: 30,
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
          //Fitness & Sports
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FitnessScreen()));
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: new LinearGradient(colors: [
                  Colors.grey[800],
                  Colors.black,
                ], begin: Alignment.centerLeft, end: new Alignment(1.0, 1.0)),
              ),
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage("assets/fitness.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Padding(
                            //   padding: EdgeInsets.only(left: 16),
                            //   child: Text(
                            //     "hello my sweety",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 20,
                            //         fontWeight: FontWeight.bold),
                            //   ),

                            // )
                            Container(
                                child: Text(
                              "Fitness And Sports",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              child: Icon(
                                Icons.fitness_center,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Emergency Contacts
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmergencyContactScreen()));
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: new LinearGradient(colors: [
                  Colors.grey[800],
                  Colors.black,
                ], begin: Alignment.centerLeft, end: new Alignment(1.0, 1.0)),
              ),
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage("assets/EmergencyContacts.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: Text(
                              "Emergency Contacts",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              child: Icon(
                                Icons.contact_phone,
                                color: Colors.white,
                                size: 30,
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
          //German Phrases
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GermanPhrasesScreen()));
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: new LinearGradient(colors: [
                  Colors.grey[800],
                  Colors.black,
                ], begin: Alignment.centerLeft, end: new Alignment(1.0, 1.0)),
              ),
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage("assets/GermanPhrases.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: Text(
                              "German Phrases",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              child: Icon(
                                Icons.language,
                                color: Colors.white,
                                size: 30,
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
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            }
            if (index == 1) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            }
            if (index == 2) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => DummyFile()));
            }
          }),
    );
  }
}
