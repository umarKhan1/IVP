import 'package:IVY_interactive_virtual_guide/authscreen/forget.dart';
import 'package:IVY_interactive_virtual_guide/authscreen/signupscreen.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool loader = false;
  Future<String> showLoginMethod() async {
    String url =
        "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCHO4wWVEGnue62sTgiKWzgQ96iNoreyYY";
    setState(() {
      loader = true;
    });

    final response = await http.post(url,
        body: jsonEncode({
          'email': _emailController.text.trim(),
          'password': _passwordController.text.trim(),
          'returnSecureToken': true
        }));
    Map<String, dynamic> loginserverresponse = jsonDecode(response.body);
    String email;
    String username;
    var userid;
    if (response.statusCode == 200) {
      var checkuseremail = loginserverresponse['email'];
      SharedPreferences prefs = await SharedPreferences.getInstance();

      String getuserserverResponse =
          "https://ivy-interactive-virtual-e8e62-default-rtdb.firebaseio.com/AuthenticateUsers.json";
      final userserverresponse = await http.get(getuserserverResponse);
      Map<String, dynamic> data = jsonDecode(userserverresponse.body);

      data.forEach((key, value) {
        if (checkuseremail == value['email']) {
          setState(() {
            email = value['email'].toString();
            username = value['full_name'];
            userid = value['Userid'];
          });
        }
      });

      await prefs.setString('email', email);
      await prefs.setString('full_name', username);
      await prefs.setString('Userid', userid);
      setState(() {
        loader = false;
      });
      Fluttertoast.showToast(msg: "Login Sucessfully");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      Fluttertoast.showToast(msg: "Invalid Email or Password");
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  "assets/splsh1.png",
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                    height: 70 * height,
                    width: 85.3 * width1,
                    padding: EdgeInsets.all(15),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          //  Email Text Field
                          TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                prefixIcon: Icon(
                                  Icons.mail,
                                  color: Color(0xffFF5733),
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                ),
                                filled: true,
                                fillColor: Colors.grey[200]),
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value.isEmpty || !value.contains('@')) {
                                return 'invalid email';
                              }
                              return null;
                            },
                            onSaved: (value) {},
                          ),
                          SizedBox(
                            height: 3 * height,
                          ),

                          //  Password Field Code Starts Here

                          TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xffFF5733),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                ),
                                filled: true,
                                fillColor: Colors.grey[200]),
                            obscureText: true,
                            controller: _passwordController,
                            validator: (value) {
                              if (value.isEmpty || value.length <= 5) {
                                return 'invalid Password';
                              }
                              return null;
                            },
                            onSaved: (value) {},
                          ),

                          SizedBox(
                            height: 2 * height,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                InkWell(
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: "Montserrat-Regular"),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgetScreen()));
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),

                          //  Login Button Code Starts From Here
                          SizedBox(
                            height: 4 * height,
                          ),

                          Visibility(
                            visible: loader ?? true,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 2,
                                ),
                                SpinKitCubeGrid(
                                  color: Color(0xffFF5733),
                                  size: 30,
                                ),
                                Text(
                                  "Please wait...",
                                  style: TextStyle(
                                      fontSize: 20, color: Color(0xffFF5733)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4 * height,
                          ),
                          Container(
                            height: 8.8 * height,
                            width: 85.3 * width1,
                            child: FlatButton(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: "Montserrat-Bold"),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  showLoginMethod();
                                }
                              },
                              color: Color(0xffFF5733),
                            ),
                          ),
                          //  Login Button Code Ends Here

                          SizedBox(
                            height: 8 * height,
                          ),

                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Not A Member, ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: "Montserrat-Regular"),
                                ),
                                InkWell(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Color(0xffFF5733),
                                        fontSize: 16,
                                        fontFamily: "Montserrat-Regular"),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignUpScreen()));
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
