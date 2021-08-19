import 'package:flutter/material.dart';

class ButtonNew extends StatelessWidget {
  final String lable;
  final Color? color;
  final Color? textColor;
  final double? height;
  final double? width;
  final Function callback;

  const ButtonNew({
    required this.lable,
    this.color,
    this.textColor,
    this.height,
    this.width,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width ?? 150,
      height: this.height ?? 40,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(this.color ?? Colors.red),
          foregroundColor:
              MaterialStateProperty.all<Color>(this.textColor ?? Colors.white),
        ),
        onPressed: () {
          print(2);
          this.callback();
        },
        child: Center(
          child: Text(this.lable, style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}
