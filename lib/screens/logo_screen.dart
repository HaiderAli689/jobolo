import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jobolo_app/screens/HomeScreen.dart';
import 'package:jobolo_app/screens/direct_store_or%20_browse.dart';
import 'package:jobolo_app/screens/auth_screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  State<LogoScreen> createState() => LogoScreenState();
}

class LogoScreenState extends State<LogoScreen> {
  static const String KeyLogin = 'Login';

  void whereToGo() async {
    var sharedprefs = await SharedPreferences.getInstance();
    var isLoggedIn = sharedprefs.getBool(KeyLogin);

    Timer(Duration(seconds: 2), () {
      if(isLoggedIn != null) {
        if (isLoggedIn) {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => DirectStoreBrowserScreen()));
        } else {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
        }
      } else {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
      }
    });
  }

  initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginScreen()));
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 200,
          height: 100,
        ),
      ),
    );
  }
}
