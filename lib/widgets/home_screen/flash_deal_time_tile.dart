import 'package:flutter/material.dart';

class TimeTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 25,
        child: Center(
            child: Text(
          '12',
          style: TextStyle(color: Colors.white),
        )),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}
