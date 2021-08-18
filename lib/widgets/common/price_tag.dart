import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final String lable;
  final double? height;
  final double? width;

  const PriceCard({required this.lable, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: this.height ?? 40,
        width: this.width ?? 75,
        child: Center(child: Text('Rs. ${this.lable}')),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
            border: Border.all(color: (Colors.grey[100])!)),
      ),
    );
  }
}
