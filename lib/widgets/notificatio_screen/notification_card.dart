import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 20,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.0),
                        child: Text(
                          'Stay Safe! Reload Online',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                      Text(
                        '0763124312',
                        style: TextStyle(fontSize: 13, color: Colors.grey[900]),
                      )
                    ],
                  ),
                  Text(
                    'Today at 4:43 PM',
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Checkbox(
                  value: true,
                  onChanged: (ss) {},
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
              ),
            ],
          )),
    );
  }
}
