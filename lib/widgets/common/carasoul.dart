import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://i2.wp.com/lk.local-sim-plan.com/wp-content/uploads/2019/09/Airtel-offers-free-voice-calls-to-anywhere-in-Sri-Lanka.jpg?fit=984%2C481&ssl=1',
  'https://res.cloudinary.com/dgklvd3do/images/f_auto,q_auto/v1623554936/Airtel-unlimited-data-packages-in-Sri-lanka_1532f113b/Airtel-unlimited-data-packages-in-Sri-lanka_1532f113b.jpeg',
];

List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.only(right: 15.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(item), fit: BoxFit.fill)),
            ),
          ),
        ))
    .toList();

class ComplicatedImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        disableCenter: true,
        viewportFraction: 0.97,
        enlargeCenterPage: false,
      ),
      items: imageSliders,
    );
  }
}
