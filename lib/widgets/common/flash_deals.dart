import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/common/button.dart';
import 'package:my_airtel_app/widgets/home_screen/flash_deal_time_seperator.dart';
import 'package:my_airtel_app/widgets/home_screen/flash_deal_time_tile.dart';

final List<String> imgList = [
  'https://scontent.fcmb11-1.fna.fbcdn.net/v/t1.6435-9/132786133_3521290757908315_976279305653221791_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=e3f864&_nc_ohc=JTwGEHPRC44AX_k4N9I&tn=rFikF5tBbfwn1SfJ&_nc_ht=scontent.fcmb11-1.fna&oh=079b9a5d648865f34a6a8267c859a67b&oe=613FD799',
  'https://scontent.fcmb11-1.fna.fbcdn.net/v/t1.6435-9/132786133_3521290757908315_976279305653221791_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=e3f864&_nc_ohc=JTwGEHPRC44AX_k4N9I&tn=rFikF5tBbfwn1SfJ&_nc_ht=scontent.fcmb11-1.fna&oh=079b9a5d648865f34a6a8267c859a67b&oe=613FD799',
];

List<Widget> imageSliders = imgList
    .map((item) => Container(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.only(right: 15.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.grey[700],
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 14.0, top: 14.0, right: 15.0, bottom: 14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Offer ends in',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal)),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                child: Row(
                                  children: [
                                    TimeTile(),
                                    TimeSeparator(),
                                    TimeTile(),
                                    TimeSeparator(),
                                    TimeTile(),
                                    TimeSeparator(),
                                    TimeTile(),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 18.0),
                                child: Text('27% Claimed',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal)),
                              ),
                              SizedBox(
                                height: 35,
                                width: 90,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.red),
                                  ),
                                  onPressed: () {},
                                  child: Center(
                                    child: Text('Claim',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                //image: NetworkImage(item), fit: BoxFit.fill)),
                                image: NetworkImage(item),
                                fit: BoxFit.cover)),
                      ),
                      flex: 4,
                    )
                  ],
                )),
          ),
        ))
    .toList();

class FlashDeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 1.9,
        disableCenter: true,
        viewportFraction: 1,
        enlargeCenterPage: false,
      ),
      items: imageSliders,
    );
  }
}
