import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  bool _isAuthenticated = true;

  bool get isAuthenticated => _isAuthenticated;

  void changeAuthentication(int stage) {
    _isAuthenticated = !_isAuthenticated;
    notifyListeners();
  }
}
