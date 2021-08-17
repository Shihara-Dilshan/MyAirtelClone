import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,
      child: Center(child: Text('Rs. 20')),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey[100],
          border: Border.all(color: Colors.grey[200])),
    );
  }
}
