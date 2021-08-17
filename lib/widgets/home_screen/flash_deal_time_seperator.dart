import 'package:flutter/material.dart';

class TimeSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      child: Center(
        child: Text(
          ":",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
