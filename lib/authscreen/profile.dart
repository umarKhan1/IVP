import 'package:IVY_interactive_virtual_guide/dashboard/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dummyfile.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String email;
  String username;
  void initState() {
    super.initState();
    getPreference();
  }

  void getPreference() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      email = sharedPreferences.getString("email");
      username = sharedPreferences.getString("full_name");
      print("Call shared" + email);
      print(username);
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;
    return Scaffold(
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
                    "My Profile",
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
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              // height: 64 * height,
              color: Colors.white,
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {});
                                },
                                child: Container(
                                  width: 28 * width1,
                                  height: 18 * height,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: new DecorationImage(
                                      image: AssetImage('assets/user.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: new BorderRadius.all(
                                        new Radius.circular(100.0)),
                                    border: new Border.all(
                                      color: Colors.transparent,
                                      // Color(0xff6762F1),
                                      width: 0.4 * width1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 0.7 * height,
                          // ),
                          //   Text("Micheal Joe", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: "Montserrat-Regular"),),
                          //   SizedBox(
                          //     height: 0.2 * height,
                          //   ),
                          //   Text("micheal@example.com", style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Montserrat-Regular"),),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 5 * height,
                                ),
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10 * width1,
                                    ),
                                    Text(
                                      "Full Name",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 14,
                                          fontFamily: "Montserrat-Regular"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 0.5 * height,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.person,
                                      size: 26,
                                      color: Color(0xffFF5733),
                                    ),
                                    SizedBox(
                                      width: 4 * width1,
                                    ),
                                    Text(
                                      username,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: "Montserrat-Regular"),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.black,
                                  height: 2 * height,
                                ),
                                SizedBox(
                                  height: 3 * height,
                                ),
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10 * width1,
                                    ),
                                    Text(
                                      "Email Address",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 14,
                                          fontFamily: "Montserrat-Regular"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 0.5 * height,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.mail,
                                      size: 26,
                                      color: Color(0xffFF5733),
                                    ),
                                    SizedBox(
                                      width: 4 * width1,
                                    ),
                                    Text(
                                      email,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: "Montserrat-Regular"),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.black,
                                  height: 2 * height,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      //name field
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //         enabledBorder: OutlineInputBorder(
                      //             borderSide: BorderSide(color: Colors.black),
                      //             borderRadius:
                      //             BorderRadius.all(Radius.circular(5))),
                      //         focusedBorder: OutlineInputBorder(
                      //             borderSide: BorderSide(color: Colors.black),
                      //             borderRadius:
                      //             BorderRadius.all(Radius.circular(5))),
                      //         prefixIcon: Icon(
                      //           Icons.verified_user,
                      //           color: Color(0xffFF5733),
                      //         ),
                      //         hintText: "Full Name",
                      //         hintStyle: TextStyle(
                      //           fontFamily: "Montserrat-Regular",
                      //           fontStyle: FontStyle.normal,
                      //           fontSize: 16,
                      //         ),
                      //         filled: true,
                      //         fillColor: Colors.grey[200]),
                      //     controller: _nameController,
                      //     keyboardType: TextInputType.text,
                      //     validator: (value) {
                      //       if (value.isEmpty) {
                      //         return 'Please Enter Your Name';
                      //       }
                      //       return null;
                      //     },
                      //     onSaved: (value) {},
                      //   ),
                      // ),
                      // SizedBox(height: 3 * height,),
                      // //  Email Text Field
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //         enabledBorder: OutlineInputBorder(
                      //             borderSide: BorderSide(color: Colors.black),
                      //             borderRadius:
                      //             BorderRadius.all(Radius.circular(5))),
                      //         focusedBorder: OutlineInputBorder(
                      //             borderSide: BorderSide(color: Colors.black),
                      //             borderRadius:
                      //             BorderRadius.all(Radius.circular(5))),
                      //         prefixIcon: Icon(
                      //           Icons.mail,
                      //           color: Color(0xffFF5733),
                      //         ),
                      //         hintText: "Email",
                      //         hintStyle: TextStyle(
                      //           fontFamily: "Montserrat-Regular",
                      //           fontStyle: FontStyle.normal,
                      //           fontSize: 16,
                      //         ),
                      //         filled: true,
                      //         fillColor: Colors.grey[200]),
                      //     controller: _emailController,
                      //     keyboardType: TextInputType.emailAddress,
                      //     validator: (value) {
                      //       if (value.isEmpty || !value.contains('@')) {
                      //         return 'invalid email';
                      //       }
                      //       return null;
                      //     },
                      //     onSaved: (value) {},
                      //   ),
                      // ),

                      // SizedBox(height: 4 * height,),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Container(
                      //     height: 8.8 * height,
                      //     width: 85.3 * width1,
                      //     child: FlatButton(
                      //       child: Text(
                      //         "UPDATE",
                      //         style: TextStyle(
                      //             color: Colors.white,
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: 14,
                      //             fontFamily: "Montserrat-Bold"),
                      //       ),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(50),
                      //       ),
                      //       onPressed: () {
                      //         _formKey.currentState.validate();
                      //       },
                      //       color: Color(0xffFF5733),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
          index: 1,
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
