import 'package:flutter/material.dart';
import 'package:my_airtel_app/providers/auth_provider.dart';
import 'package:my_airtel_app/providers/configure_progress_provider.dart';
import 'package:my_airtel_app/widgets/common/button.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () {
          context.read<Auth>().changeAuthentication(0);
          context.read<ConfigureProgress>().proceed(1);
        },
        child: Text('TextButton'),
      ),
    );
  }
}
