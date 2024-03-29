import 'dart:async';

import 'package:first_project/Screen/loginPage.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              color: Colors.yellow[300],
              image:
                  const DecorationImage(image: AssetImage("assets/HFJ.png")))),
    );
  }
}
