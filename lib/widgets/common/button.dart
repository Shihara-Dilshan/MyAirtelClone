import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String label;
  final Function callback;
  final int index;
  const Button(this.label, this.callback, this.index);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        onPressed: () {
          widget.callback(widget.index);
        },
        child: Text(widget.label, style: TextStyle(fontSize: 15)),
      ),
    );
  }
}
