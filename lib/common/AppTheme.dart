import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    textTheme: TextTheme(
      title: TextStyle(color: Colors.green),
      display1: TextStyle(color: Colors.yellow),
      display2: TextStyle(color: Colors.red),
      display3: TextStyle(color: Colors.cyanAccent),
      display4: TextStyle(color: Colors.orange),
      headline: TextStyle(color: Colors.deepPurpleAccent),
      caption: TextStyle(color: Colors.brown),
      overline: TextStyle(color: Colors.orangeAccent),
      body1: TextStyle(color: Colors.black45),
      body2: TextStyle(color: Colors.tealAccent),
    ),
    primarySwatch: Colors.blueGrey,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black45,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
