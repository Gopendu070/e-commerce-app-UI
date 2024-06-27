import 'package:flutter/material.dart';
import 'package:fluxstore/UI/HomePage.dart';
import 'package:fluxstore/UI/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 155, 200, 230)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
