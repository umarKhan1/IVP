import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DummyFile extends StatefulWidget {
  @override
  _DummyFileState createState() => _DummyFileState();
}

class _DummyFileState extends State<DummyFile> {
  String email;
  String username;
  @override
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
    return Scaffold(
      body: Center(
        child: Text("login"),
      ),
    );
  }
}
