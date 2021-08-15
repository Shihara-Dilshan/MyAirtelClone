import 'package:flutter/material.dart';

class DataType with ChangeNotifier {
  String _connection = 'Data';

  String get connection => _connection;

  void changeConenction(String conn) {
    switch (conn) {
      case 'Data':
        _connection = 'Data';
        break;
      case 'SMS':
        _connection = 'SMS';
        break;
      case 'Voice':
        _connection = 'Voice';
        break;
      default:
        _connection = 'Data';
    }
    notifyListeners();
  }
}
