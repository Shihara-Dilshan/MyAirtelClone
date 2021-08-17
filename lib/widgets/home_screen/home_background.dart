import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey[200],
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0)),
                ),
                width: MediaQuery.of(context).size.width,
              )),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.grey[200],
                width: MediaQuery.of(context).size.width,
              ))
        ],
      ),
    );
  }
}
