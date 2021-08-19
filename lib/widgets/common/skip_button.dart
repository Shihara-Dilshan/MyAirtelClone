import 'package:flutter/material.dart';

class SkipButton extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<SkipButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: () {},
        child: Text('Skip for now', style: TextStyle(fontSize: 15)),
      ),
    );
  }
}
