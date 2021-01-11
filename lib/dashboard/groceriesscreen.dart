import 'package:IVY_interactive_virtual_guide/dashboard/grocery.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/personalscreen.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/pharmacyscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class GroceriesScreen extends StatefulWidget {
  @override
  _GroceriesScreenState createState() => _GroceriesScreenState();
}

class _GroceriesScreenState extends State<GroceriesScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;
    return DefaultTabController(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "GROCERIES",
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
            bottom: TabBar(
              labelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat-Regular",
              ),
              indicatorWeight: 3,
              indicatorColor: Colors.blue[900],
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.black,
              tabs: <Widget>[
                Tab(
                  text: "GROCERY",
                ),
                Tab(
                  text: "PERSONAL CARE",
                ),
                Tab(
                  text: "PHARMACY",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Grocery2(),
            PersonalScreen(),
            PharmacyScreen(),
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
            debugPrint("Current Index is $index");
          },
        ),
      ),
      length: 3, // it defines how many pages you want
      initialIndex: 0,
    );
  }
}
