import 'package:flutter/material.dart';

class AirtelThanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red[900],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 7.0, bottom: 7.0),
        child: Row(
          children: [
            Text(
              'airtelThanks',
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    color: Colors.red[700],
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
