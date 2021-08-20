import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// List<Widget> imageSliders = imgList
//     .map((item) => Container(
//           child: Container(
//             margin: EdgeInsets.only(right: 15.0),
//             child: Container(
//               height: 150,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                       image: NetworkImage(item), fit: BoxFit.fill)),
//             ),
//           ),
//         ))
//     .toList();

class ComplicatedImageDemo extends StatefulWidget {
  @override
  _ComplicatedImageDemoState createState() => _ComplicatedImageDemoState();
}

class _ComplicatedImageDemoState extends State<ComplicatedImageDemo> {
  late List<String> imgList;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    imgList = [
      'https://i2.wp.com/lk.local-sim-plan.com/wp-content/uploads/2019/09/Airtel-offers-free-voice-calls-to-anywhere-in-Sri-Lanka.jpg?fit=984%2C481&ssl=1',
      'https://res.cloudinary.com/dgklvd3do/images/f_auto,q_auto/v1623554936/Airtel-unlimited-data-packages-in-Sri-lanka_1532f113b/Airtel-unlimited-data-packages-in-Sri-lanka_1532f113b.jpeg',
      'https://i2.wp.com/lk.local-sim-plan.com/wp-content/uploads/2019/09/Airtel-offers-free-voice-calls-to-anywhere-in-Sri-Lanka.jpg?fit=984%2C481&ssl=1',
      'https://res.cloudinary.com/dgklvd3do/images/f_auto,q_auto/v1623554936/Airtel-unlimited-data-packages-in-Sri-lanka_1532f113b/Airtel-unlimited-data-packages-in-Sri-lanka_1532f113b.jpeg',
      'https://i2.wp.com/lk.local-sim-plan.com/wp-content/uploads/2019/09/Airtel-offers-free-voice-calls-to-anywhere-in-Sri-Lanka.jpg?fit=984%2C481&ssl=1',
      'https://res.cloudinary.com/dgklvd3do/images/f_auto,q_auto/v1623554936/Airtel-unlimited-data-packages-in-Sri-lanka_1532f113b/Airtel-unlimited-data-packages-in-Sri-lanka_1532f113b.jpeg',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              disableCenter: true,
              viewportFraction: 0.92,
              height: 150,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _index = index;
                });
              },
            ),
            items: imgList
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
                .toList(),
          ),
          Container(
            height: 150,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: AnimatedSmoothIndicator(
                    activeIndex: _index,
                    count: imgList.length,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.white,
                      dotWidth: 3,
                      spacing: 4,
                      dotHeight: 3,
                      expansionFactor: 7,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
