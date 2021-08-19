import 'package:flutter/material.dart';

class NumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border.all(color: (Colors.grey[200])!),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))),
          child: Center(
            child: Text(
              '075',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 45,
            decoration: BoxDecoration(
                color: Colors.grey[50],
                border: Border.all(color: (Colors.grey[200])!),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '000-0000',
                contentPadding: EdgeInsets.only(left: 10),
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey[300]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
