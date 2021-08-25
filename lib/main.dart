import 'package:flutter/material.dart';
import 'package:flutter_app9/screens/splash.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'mypop'
    ),
    // darkTheme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

