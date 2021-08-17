import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DataDetails extends StatefulWidget {
  @override
  _DataDetailsState createState() => _DataDetailsState();
}

class _DataDetailsState extends State<DataDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              children: [
                CircularPercentIndicator(
                  radius: 90.0,
                  lineWidth: 5.0,
                  percent: 0.6,
                  center: new Text("1.4GB",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  progressColor: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Anytime',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              children: [
                CircularPercentIndicator(
                  radius: 90.0,
                  lineWidth: 5.0,
                  percent: 0.9,
                  center: new Text("5.2GB",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  progressColor: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Night time',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0.0),
            child: Column(
              children: [
                CircularPercentIndicator(
                  radius: 90.0,
                  lineWidth: 5.0,
                  percent: 0.2,
                  center: new Text("151MB",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  progressColor: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text('4G', style: TextStyle(fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
