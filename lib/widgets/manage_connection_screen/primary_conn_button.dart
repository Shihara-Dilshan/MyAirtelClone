import 'package:flutter/material.dart';

class PrimaryConnectionBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.red),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 6.0, top: 2, right: 6.0, bottom: 2.0),
        child: Text(
          'Primary',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
