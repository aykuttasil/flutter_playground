import 'package:flutter/material.dart';

/*
ThemeData appTheme() {
  return ThemeData(
    textTheme: TextTheme(
      title: TextStyle(color: Colors.green),
      display1: TextStyle(color: Colors.yellow),
      display2: TextStyle(color: Colors.red),
      display3: TextStyle(color: Colors.cyanAccent),
      display4: TextStyle(color: Colors.orange),
      headline: TextStyle(color: Colors.brown),
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

ThemeData darkAppTheme() {
  return ThemeData(
    textTheme: TextTheme(
      title: TextStyle(color: Colors.black),
      display1: TextStyle(color: Colors.black),
      display2: TextStyle(color: Colors.black),
      display3: TextStyle(color: Colors.black),
      display4: TextStyle(color: Colors.black),
      headline: TextStyle(color: Colors.black),
      caption: TextStyle(color: Colors.black),
      overline: TextStyle(color: Colors.black),
      body1: TextStyle(color: Colors.black),
      body2: TextStyle(color: Colors.black),
    ),
    primarySwatch: Colors.blueGrey,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black45,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
*/

class AppTheme {
  AppTheme._();

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);

  static const Color background = Color(0xFFF2F3F8);
  static const Color nearlyDarkBlue = Color(0xFF2633C5);
  static const Color nearlyBlue = Color(0xFF00B6F0);

  static const String fontName = 'WorkSans';

  static ThemeData myAppTheme = ThemeData(
    textTheme: textTheme,
    primarySwatch: Colors.blueGrey,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black45,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static ThemeData myDarkAppTheme = ThemeData(
    textTheme: textTheme,
    primarySwatch: Colors.blueGrey,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black45,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static const TextTheme textTheme = TextTheme(
    display1: display1,
    headline: headline,
    title: title,
    subtitle: subtitle,
    body2: body2,
    body1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
}
