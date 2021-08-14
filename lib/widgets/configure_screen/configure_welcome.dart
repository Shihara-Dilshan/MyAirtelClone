import 'package:flutter/material.dart';
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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Welcome',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
                Text('Explore all services at your fingertips',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
                  child: Image(
                      image: AssetImage(
                          'assets/images/undraw_wandering_mind_0mkm.png')),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LanguageButton(),
                    LanguageButton(),
                    LanguageButton(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Button("Get Started",
                      context.read<ConfigureProgress>().proceed, 2),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SkipButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
