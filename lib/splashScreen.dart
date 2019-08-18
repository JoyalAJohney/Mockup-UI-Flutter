import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mockup_ui/homePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), () => 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150.0,
              width: 200.0,
              child: Image(
                image: AssetImage("assets/marvel.jpg"),
              ),
            ),
            // CircularProgressIndicator(
            //   strokeWidth: 5.0,
            //   valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            // )
          ],
        ),
      ),
    );
  }
}