import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/common/select_language_card.dart';

class ChooseLangauge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Prefered Language',
              style: TextStyle(fontSize: 16),
            ),
            LanguageCard(
              language: "English",
              sample: "Welcome to My Airtel",
            ),
            LanguageCard(
              language: "සිංහල",
              sample: "එයාටෙල් වෙත සාදරයෙන් පිළිගනිමු",
            ),
            LanguageCard(
              language: "தமிழ்",
              sample: "எனது ஏர்டெல்லுக்கு வரவேற்கிறோம்",
            )
          ],
        ),
      ),
    );
  }
}
