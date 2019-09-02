import 'package:flutter/material.dart';

class AppTextTheme extends TextTheme {
  @override
  TextStyle get body1 => TextStyle(fontSize: 15);

  @override
  TextStyle get display1 => TextStyle(
        fontSize: 30,
        color: Colors.red,
      );
}
