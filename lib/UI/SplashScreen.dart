import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluxstore/UI/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), () {
      animate();
    });
  }

  void navigateToHome() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
  }

  double Height = 50;
  double Width = 50;

  ///////////////////////////////////////////////////////
  void animate() {
    if (Height == 50 && Width == 50) {
      setState(() {
        Height = 80;
        Width = 80;
      });
    }
    //navigateToHome();
    Timer(Duration(seconds: 3), () {
      navigateToHome();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Fluxstore",
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        )
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                duration: Duration(seconds: 2),
                height: Height,
                width: Width,
                child: Image.asset(
                  'lib/assets/icons/app_icon.jpg',
                  fit: BoxFit.fitWidth,
                )),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
