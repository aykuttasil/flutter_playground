import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/AboutPage.dart';
import 'package:flutter_playground/pages/HomePage.dart';
import 'package:flutter_playground/pages/NavigateWithArgumentsPage.dart';
import 'package:flutter_playground/theme/AppTheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Mennum'),
        AboutPage.routeName: (context) => AboutPage(),
        NavigateWithArgumentsPage.routeName: (context) =>
            NavigateWithArgumentsPage(),
      },
    );
  }
}
