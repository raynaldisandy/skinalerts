import 'package:flutter/material.dart';
import 'package:skinalert/splashscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkinAlert',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

