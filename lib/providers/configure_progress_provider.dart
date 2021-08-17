import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/configure_screen/configure_get_number.dart';
import 'package:my_airtel_app/widgets/configure_screen/configure_otp_confirm.dart';
import 'package:my_airtel_app/widgets/configure_screen/configure_welcome.dart';

class ConfigureProgress with ChangeNotifier {
  Widget _current = WelcomeWideget();

  Widget get current => _current;

  void proceed(int stage) {
    switch (stage) {
      case 1:
        _current = WelcomeWideget();
        break;
      case 2:
        _current = GetNumberWidget();
        break;
      case 3:
        _current = OTPConfirmWidget();
        break;
      default:
        _current = WelcomeWideget();
    }
    notifyListeners();
  }
}
