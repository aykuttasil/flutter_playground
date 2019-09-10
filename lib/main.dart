import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/AboutPage.dart';
import 'package:flutter_playground/pages/HomePage.dart';
import 'package:flutter_playground/pages/NavigateWithArgumentsPage.dart';
import 'package:flutter_playground/theme/AppTheme.dart';
import 'package:provider/provider.dart';

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

class AppState with ChangeNotifier {
  String _username;

  void changeUserName(String username) {
    _username = username;
    notifyListeners();
  }

  String get username => _username;
}

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
