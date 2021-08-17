import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/common/button.dart';
import 'package:my_airtel_app/widgets/common/button_new.dart';
import 'package:my_airtel_app/widgets/common/price_tag.dart';

class RechargeCard extends StatelessWidget {
  final double paddingHorizontal;
  final double paddingVirtical;
  final List<String> entries = <String>['30', '50', '100', '150', '200'];

  RechargeCard([this.paddingHorizontal = 5, this.paddingVirtical = 5]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingVirtical),
      child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: EdgeInsets.only(
                left: 15.0, top: 12.0, right: 15.0, bottom: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Rs',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Text(
                                '242.31',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Account balance',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    ButtonNew(
                      lable: "Recharge Now",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 36,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Main account : Rs 202.14',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                          Text('Bonus account : Rs 202.14',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black))
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text('Quick Reload',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  height: 40.0,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(top: 0),
                      itemCount: entries.length,
                      itemBuilder: (BuildContext context, int index) {
                        return PriceCard(lable: entries[index]);
                      }),
                ),
              ],
            ),
          )),
    );
  }
}
