import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgetScreen extends StatefulWidget {
  @override
  _ForgetScreenState createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> resetPassword(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _emailController = new TextEditingController();
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
                    "Forget Password",
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
        child: Container(
          padding: EdgeInsets.all(25),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                    height: 60 * height,
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

                          Container(
                            height: 8.8 * height,
                            width: 85.3 * width1,
                            child: FlatButton(
                              child: Text(
                                "Forget Password",
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
                                  resetPassword(_emailController.text);
                                  Fluttertoast.showToast(
                                      msg: "Recovery Email Send Sucess");
                                  Navigator.of(context).pop();
                                }
                              },
                              color: Color(0xffFF5733),
                            ),
                          ),

                          //  Forget Button Code Ends Here
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

class LoginPage {}
