import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: null,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          return Colors.white;
        }),
        side: MaterialStateProperty.resolveWith((states) {
          return BorderSide(color: Colors.red, width: 1);
        }),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0))),
      ),
      child: const Text("Button text"),
    );
  }
}
