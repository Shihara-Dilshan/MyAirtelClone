import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class VerticalProgress extends StatelessWidget {
  final String label;
  final double percentage;
  final String remainingCount;

  const VerticalProgress(
      {required this.label,
      required this.percentage,
      required this.remainingCount});

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
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.label,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: LinearPercentIndicator(
                  lineHeight: 7.0,
                  padding: EdgeInsets.fromLTRB(4, 6, 0, 0),
                  percent: this.percentage,
                  backgroundColor: Color(0xFFE7E7E7),
                  progressColor: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  this.remainingCount,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              )
            ],
          ),
        ));
  }
}
