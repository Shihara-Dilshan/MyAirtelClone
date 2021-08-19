import 'package:flutter/material.dart';
import 'package:my_airtel_app/providers/language_provider.dart';
import 'package:provider/provider.dart';
import 'package:my_airtel_app/providers/configure_progress_provider.dart';
import 'package:my_airtel_app/widgets/common/button.dart';
import 'package:my_airtel_app/widgets/common/skip_button.dart';
import 'package:my_airtel_app/widgets/configure_screen/language_button.dart';

class WelcomeWideget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 50)),
                  Text('Explore all services at your fingertips',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.grey)),
                ],
              ),
            ), //Replace with your child widget
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.red,
              child: Image(
                image: AssetImage('assets/images/man_sitting.png'),
                fit: BoxFit.fill,
              ),
            ), //Replace with your child widget
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LanguageButton(
                    language: "English",
                    languageTag: "English",
                    callback: context.read<Language>().changeLanguage,
                  ),
                  LanguageButton(
                    language: "සිංහල",
                    languageTag: "Sinhala",
                    callback: context.read<Language>().changeLanguage,
                  ),
                  LanguageButton(
                    language: "தமிழ்",
                    languageTag: "Tamil",
                    callback: context.read<Language>().changeLanguage,
                  ),
                ],
              ),
            ), //Replace with your child widget
          ),
          Flexible(
            flex: 1,
            child: Button(
                "Get Started",
                context.read<ConfigureProgress>().proceed,
                2), //Replace with your child widget
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SkipButton(),
            ), //Replace with your child widget
          ),
        ],
      ),
    )
        // child: Container(
        //   height: MediaQuery.of(context).size.height,
        //   child: Center(
        //     child: Column(
        //       mainAxisSize: MainAxisSize.max,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.stretch,
        //       children: [
        //         Text('Welcome',
        //             style: TextStyle(fontWeight: FontWeight.w400, fontSize: 45)),
        //         Text('Explore all services at your fingertips',
        //             style: TextStyle(
        //                 fontWeight: FontWeight.normal,
        //                 fontSize: 18,
        //                 color: Colors.grey)),
        //         Padding(
        //           padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
        //           child:
        //               Image(image: AssetImage('assets/images/man_sitting.png')),
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             LanguageButton(
        //               language: "English",
        //               languageTag: "English",
        //               callback: context.read<Language>().changeLanguage,
        //             ),
        //             SizedBox(
        //               width: 10,
        //             ),
        //             LanguageButton(
        //               language: "සිංහල",
        //               languageTag: "Sinhala",
        //               callback: context.read<Language>().changeLanguage,
        //             ),
        //             SizedBox(
        //               width: 10,
        //             ),
        //             LanguageButton(
        //               language: "தமிழ்",
        //               languageTag: "Tamil",
        //               callback: context.read<Language>().changeLanguage,
        //             ),
        //           ],
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(top: 18.0),
        //           child: Button("Get Started",
        //               context.read<ConfigureProgress>().proceed, 2),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(top: 10.0),
        //           child: SkipButton(),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
