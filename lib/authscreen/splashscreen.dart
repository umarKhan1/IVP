import 'dart:async';
import 'package:flutter/material.dart';

import 'loginscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 10),
        () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()))
            });
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;
    print(width1.toString() + " " + height.toString());
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          // Back Ground Color
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xffb4d6fa),
            Color(0xffdedcdc),
          ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/splsh1.png",
                height: 400,
                width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
