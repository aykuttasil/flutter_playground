import 'package:flutter/foundation.dart';

class AppState with ChangeNotifier {
  bool _isDarkTheme = false;
  String _username;

  void changeUserName(String username) {
    _username = username;
    notifyListeners();
  }

  void changeAppTheme(bool isDarkTheme) {
    _isDarkTheme = isDarkTheme;
    notifyListeners();
  }

  String get username => _username;

  bool get isDarkTheme => _isDarkTheme;
}
