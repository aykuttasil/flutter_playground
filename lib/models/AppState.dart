import 'package:flutter/foundation.dart';

class AppState with ChangeNotifier {
  String _username;

  void changeUserName(String username) {
    _username = username;
    notifyListeners();
  }

  String get username => _username;
}
