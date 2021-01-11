import 'package:IVY_interactive_virtual_guide/authscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool loader = false;

  Future<String> buildSinupMethod() async {
    String postUrl =
        "https://ivy-interactive-virtual-e8e62-default-rtdb.firebaseio.com/AuthenticateUsers.json";
    String url =
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCHO4wWVEGnue62sTgiKWzgQ96iNoreyYY";
    setState(() {
      loader = true;
    });

    final response = await http.post(url,
        body: jsonEncode({
          'email': _emailController.text.trim(),
          'password': _passwordController.text.trim(),
          'returnSecureToken': true
        }));
    final serverResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      final postresponse = await http.post(postUrl,
          body: jsonEncode({
            'email': serverResponse['email'],
            'Userid': serverResponse['localId'],
            'full_name': _nameController.text.trim(),
          }));
      final postserverResponse = jsonDecode(postresponse.body);
      if (postresponse.statusCode == 200) {
        setState(() {
          loader = false;
        });
        Fluttertoast.showToast(msg: "Account Created Sucessfully");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
          
      } else {
        Fluttertoast.showToast(msg: "Error");
      }
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
                padding: const EdgeInsets.only(top: 80),
                child: Text(
                  "REGISTERATION",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Anton",
                      fontSize: 28,
                      letterSpacing: 2),
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
                          // Name Text Field
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
                                  Icons.verified_user,
                                  color: Color(0xffFF5733),
                                ),
                                hintText: "Full Name",
                                hintStyle: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                ),
                                filled: true,
                                fillColor: Colors.grey[200]),
                            controller: _nameController,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please Enter Your Name';
                              }
                              return null;
                            },
                            onSaved: (value) {},
                          ),

                          SizedBox(
                            height: 3 * height,
                          ),
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
                            height: 2 * height,
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
                                return 'field should not be empty or not less than 5';
                              }
                              return null;
                            },
                            onSaved: (value) {},
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
                                "REGISTER",
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
                                _formKey.currentState.validate();
                                buildSinupMethod();
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
                                  "Have Member, ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: "Montserrat-Regular"),
                                ),
                                InkWell(
                                  child: Text(
                                    "Login",
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
                                                  LoginScreen()));
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
