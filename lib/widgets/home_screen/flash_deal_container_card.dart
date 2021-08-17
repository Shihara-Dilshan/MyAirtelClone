import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/common/flash_deals.dart';

class FlashDealContainer extends StatelessWidget {
  final double paddingHorizontal;
  final double paddingVirtical;

  const FlashDealContainer(
      [this.paddingHorizontal = 5, this.paddingVirtical = 15]);

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
                  offset: Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                child: Row(
                  children: [
                    Text(
                      'Flash Deals',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                child: FlashDeals(),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'See all flash deals',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,
                      size: 15,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
