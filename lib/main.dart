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
        ChangeNotifierProvider(
          builder: (context) => AppState(),
        ),
        Provider<bool>(
          builder: (context) => true,
        )
        //Provider(builder: (context) => SomeOtherClass()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = Provider.of<bool>(context);

    return MaterialApp(
      title: 'Flutter Demos',
      theme: isDarkTheme ? AppTheme.myDarkAppTheme : AppTheme.myAppTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Flutter Demos'),
        AboutPage.routeName: (context) => AboutPage(),
        NavigateWithArgumentsPage.routeName: (context) =>
            NavigateWithArgumentsPage(),
      },
    );
  }
}
