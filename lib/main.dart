import 'package:IVY_interactive_virtual_guide/authscreen/splashscreen.dart';
import 'package:IVY_interactive_virtual_guide/dashboard/coronascreen.dart';
import 'package:flutter/material.dart';
import './dashboard/homescreen.dart';
import 'authscreen/loginscreen.dart';
import 'dashboard/travel.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xffFF5733),
          colorScheme: ColorScheme.light(primary: const Color(0xffFF5733)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen());
  }
}
