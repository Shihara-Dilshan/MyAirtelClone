import 'package:flutter/material.dart';

class EndBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                    'https://scontent.fcmb11-1.fna.fbcdn.net/v/t39.30808-6/210132141_4120569557980429_6834787666218910767_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=e3f864&_nc_ohc=E4-XrcKt4cYAX-uLMH1&_nc_ht=scontent.fcmb11-1.fna&oh=03b456c86e90c74b3517718ef209bd0d&oe=61201B2F'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
