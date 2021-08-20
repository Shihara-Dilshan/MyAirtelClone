import 'package:flutter/material.dart';

class PackageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 20,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 19.0, left: 15, right: 15.0, bottom: 19.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Social Media - 344',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Unlimited',
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'End in 5 days',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
