import 'package:flutter/material.dart';

class ConnectionStatus extends StatelessWidget {
  final String mobileNumber;
  final bool isActive;

  const ConnectionStatus({Key key, this.mobileNumber, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 7.0, bottom: 7.0),
        child: Row(
          children: [
            Text(
              '750935556',
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
