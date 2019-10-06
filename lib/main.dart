import 'package:flutter/material.dart';
import 'package:flutter_playground/common/AppTheme.dart';
import 'package:flutter_playground/pages/AboutPage.dart';
import 'package:flutter_playground/pages/HomePage.dart';
import 'package:flutter_playground/pages/NavigateWithArgumentsPage.dart';
import 'package:provider/provider.dart';

import 'models/AppState.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) => AppState()),
        //Provider(builder: (context) => SomeOtherClass()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
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