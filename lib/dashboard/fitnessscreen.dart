import 'package:IVY_interactive_virtual_guide/dashboard/gymscreen.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/gymscreen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class FitnessScreen extends StatefulWidget {
  @override
  _FitnessScreenState createState() => _FitnessScreenState();
}

class _FitnessScreenState extends State<FitnessScreen> {
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
                      "FITNESS AND SPORTS",
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
                fontSize: 15,
                fontFamily: "Montserrat-Regular",
              ),
              indicatorWeight: 3,
              indicatorColor: Colors.blue[900],
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.black,
              tabs: <Widget>[
                Tab(
                  text: "GYMS",
                ),
                Tab(
                  text: "SPORTZENTRUM",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            GymScreen(),
            GymScreen2(),
            // Completed(),
            // Cancelled()
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
      length: 2, // it defines how many pages you want
      initialIndex: 0,
    );
  }
}
