import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RoundedProgress extends StatelessWidget {
  final String bottomLabel;
  final String insideRoundedLabel;
  final double percentage;

  const RoundedProgress(
      {required this.bottomLabel,
      required this.insideRoundedLabel,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(
            children: [
              CircularPercentIndicator(
                circularStrokeCap: CircularStrokeCap.round,
                radius: 88.0,
                lineWidth: 5.0,
                backgroundColor: Color(0xFFE7E7E7),
                percent: this.percentage,
                center: new Text(this.insideRoundedLabel,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                progressColor: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  this.bottomLabel,
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
