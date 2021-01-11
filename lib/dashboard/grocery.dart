import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Grocery2 extends StatefulWidget {
  @override
  _Grocery2State createState() => _Grocery2State();
}

class _Grocery2State extends State<Grocery2> {
  // double rating = 0.0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: 93 * width1, // 380
                    height: 30 * height, // 155
                    child: Image.asset(
                      'assets/Kaufland.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Kaufland", style: TextStyle(color: Colors.black, fontFamily: "Fonarto", fontSize: 16, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SmoothStarRating(
                          starCount: 5,
                          isReadOnly: true,
                          size: 16,

                          rating: 5,
                          spacing: 2,
                          color: Colors.yellowAccent,
                          borderColor: Colors.yellowAccent,
                          allowHalfRating: true,
                          // onRated: (value) {
                          //   setState(() {
                          //     rating = value;
                          //     print("Rating is : $rating");
                          //   });
                          // },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text("10 min away", style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Montserrat-Regular"),),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 15,
                thickness: 2,
                color: Colors.grey,
                indent: 10,
                endIndent: 10,
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 93 * width1, // 380
                    height: 30 * height, // 155
                    child: Image.asset(
                      'assets/Edeka.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Edeka", style: TextStyle(color: Colors.black, fontFamily: "Fonarto", fontSize: 16, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SmoothStarRating(
                          starCount: 5,
                          isReadOnly: true,
                          size: 16,

                          rating: 4,
                          spacing: 2,
                          color: Colors.yellowAccent,
                          borderColor: Colors.yellowAccent,
                          allowHalfRating: true,
                          // onRated: (value) {
                          //   setState(() {
                          //     rating = value;
                          //     print("Rating is : $rating");
                          //   });
                          // },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Text("8 min away", style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Montserrat-Regular"),),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 15,
                thickness: 2,
                color: Colors.grey,
                indent: 10,
                endIndent: 10,
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 93 * width1, // 380
                    height: 30 * height, // 155
                    child: Image.asset(
                      'assets/Aldi.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Aldi", style: TextStyle(color: Colors.black, fontFamily: "Fonarto", fontSize: 16, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SmoothStarRating(
                          starCount: 5,
                          isReadOnly: true,
                          size: 16,
                          rating: 3.5,
                          spacing: 2,
                          color: Colors.yellowAccent,
                          borderColor: Colors.yellowAccent,
                          allowHalfRating: true,
                          // onRated: (value) {
                          //   setState(() {
                          //     rating = value;
                          //     print("Rating is : $rating");
                          //   });
                          // },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text("12 min away", style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Montserrat-Regular"),),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 15,
                thickness: 2,
                color: Colors.grey,
                indent: 10,
                endIndent: 10,
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 93 * width1, // 380
                    height: 30 * height, // 155
                    child: Image.asset(
                      'assets/Asia_Afro.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Asia Afro(Indian Store)", style: TextStyle(color: Colors.black, fontFamily: "Fonarto", fontSize: 16, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SmoothStarRating(
                          starCount: 5,
                          isReadOnly: true,
                          size: 16,

                          rating: 3,
                          spacing: 2,
                          color: Colors.yellowAccent,
                          borderColor: Colors.yellowAccent,
                          allowHalfRating: true,
                          // onRated: (value) {
                          //   setState(() {
                          //     rating = value;
                          //     print("Rating is : $rating");
                          //   });
                          // },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text("15 min away", style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Montserrat-Regular"),),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 15,
                thickness: 2,
                color: Colors.grey,
                indent: 10,
                endIndent: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
