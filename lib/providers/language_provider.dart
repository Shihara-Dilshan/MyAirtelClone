import 'package:flutter/material.dart';

class Language with ChangeNotifier {
  String _currentLanguage = 'English';

  String get currentLanguage => _currentLanguage;

  void changeLanguage(String language) {
    switch (language) {
      case 'English':
        _currentLanguage = 'English';
        break;
      case 'Sinhala':
        _currentLanguage = 'Sinhala';
        break;
      case 'Tamil':
        _currentLanguage = 'Tamil';
        break;
      default:
        _currentLanguage = 'English';
    }
    notifyListeners();
  }
}
