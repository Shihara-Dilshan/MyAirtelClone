import 'dart:ui';

import 'package:flutter/material.dart';

class Packs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: (Colors.grey[300])!.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 15.0, left: 15.0, right: 15.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        1 == 1
                            ? Text(
                                'Rs. 179',
                                style: TextStyle(
                                  color: Colors.red,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              )
                            : SizedBox(
                                height: 0,
                              ),
                        Text('Rs. 3',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IPL pack',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Daily Basis',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.red,
                      size: 15,
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                color: Colors.white,
                child: (Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[Divider(color: Colors.grey)],
                      ),
                    )
                  ],
                )),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.cloud,
                    color: Colors.red,
                    size: 12.0,
                  ),
                  Flexible(
                    child: new Container(
                      child: new Text(
                        '4GB Data',
                        overflow: TextOverflow.ellipsis,
                        style: new TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          color: new Color(0xFF212121),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.red,
                    size: 12.0,
                  ),
                  Flexible(
                    child: Container(
                      child: Text(
                        '50 Min Airtel to Airtel calls',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          color: Color(0xFF212121),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
