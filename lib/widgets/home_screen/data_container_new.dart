import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/home_screen/package_card.dart';
import 'package:my_airtel_app/widgets/home_screen/rounded_progress.dart';
import 'package:my_airtel_app/widgets/home_screen/vertical_progress.dart';

class DataContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, top: 28, right: 20, bottom: 17),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedProgress(
                        bottomLabel: "Daily Data",
                        insideRoundedLabel: "1.4GB",
                        percentage: 0.3,
                      ),
                      RoundedProgress(
                        bottomLabel: "A2O",
                        insideRoundedLabel: "34 Mins",
                        percentage: 0.9,
                      ),
                      RoundedProgress(
                        bottomLabel: "SMS",
                        insideRoundedLabel: "1000",
                        percentage: 0.4,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: VerticalProgress(
                    label: "Any Time Data",
                    percentage: 0.2,
                    remainingCount: "1.4 GB",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: VerticalProgress(
                    label: "4G Bonus",
                    percentage: 0.6,
                    remainingCount: "8 GB",
                  ),
                ),
                PackageCard(),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hide',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Icon(
                        Icons.keyboard_arrow_up_outlined,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
