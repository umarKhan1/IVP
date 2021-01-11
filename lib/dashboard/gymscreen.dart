import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class GymScreen extends StatefulWidget {
  @override
  _GymScreenState createState() => _GymScreenState();
}

class _GymScreenState extends State<GymScreen> {
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
                      'assets/Peak gym.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Peak Gym", style: TextStyle(color: Colors.black, fontFamily: "Fonarto", fontSize: 16, fontWeight: FontWeight.bold),),
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

                          rating: 4.8,
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
                        padding: const EdgeInsets.only(left: 110),
                        child: Text("lubecker str 105", style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Montserrat-Regular"),),
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
                      'assets/Mcfit.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("McFit Gym", style: TextStyle(color: Colors.black, fontFamily: "Fonarto", fontSize: 16, fontWeight: FontWeight.bold),),
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

                          rating: 3.9,
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
                        padding: const EdgeInsets.only(left: 110),
                        child: Text("Mittagstr 9", style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Montserrat-Regular"),),
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
                      'assets/Fitness class women.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Fitness class women", style: TextStyle(color: Colors.black, fontFamily: "Fonarto", fontSize: 16, fontWeight: FontWeight.bold),),
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

                          rating: 4.3,
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
                        padding: const EdgeInsets.only(left: 110),
                        child: Text("Breiter weg 125A", style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Montserrat-Regular"),),
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
