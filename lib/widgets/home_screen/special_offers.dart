import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  final double paddingHorizontal;
  final double paddingVirtical;

  const SpecialOffers([this.paddingHorizontal = 5, this.paddingVirtical = 5]);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Color(0xffd32f2f),
              borderRadius: BorderRadius.circular(15)),
          width: MediaQuery.of(context).size.width,
          height: 60,
        ),
        Container(
          height: 51,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(
                  0, 3.4), // 10% of the width, so there are ten blinds.
              colors: <Color>[
                Color(0xffee0000),
                Color(0xffffcdd2)
              ], // red to yellow
              tileMode: TileMode.clamp, // repeats the gradient over the canvas
            ),
          ),
          child: Center(
            child: Text(
              'Special Offers',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
        Positioned(
          right: 10.05,
          top: 5.0,
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage('assets/images/single_logo.png'),
                  fit: BoxFit.contain),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
          ),
        ),
        // Container(
        //   width: MediaQuery.of(context).size.width,
        //   height: 60,
        //   decoration: BoxDecoration(
        //       color: Colors.red[500], borderRadius: BorderRadius.circular(15)),
        // ),
      ],
    );
  }
}
