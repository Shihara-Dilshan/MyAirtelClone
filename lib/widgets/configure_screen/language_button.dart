import 'package:flutter/material.dart';
import 'package:my_airtel_app/providers/language_provider.dart';
import 'package:provider/provider.dart';

class LanguageButton extends StatelessWidget {
  final String language;
  final String languageTag;
  final Function callback;
  const LanguageButton(
      {@required this.language,
      @required this.languageTag,
      @required this.callback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
      child: Container(
        height: 30,
        width: (MediaQuery.of(context).size.width - 16.0) / 3.33,
        child: OutlinedButton(
          onPressed: () {
            callback(languageTag);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              return context.watch<Language>().currentLanguage == languageTag
                  ? Colors.white
                  : Colors.grey[200];
            }),
            side: MaterialStateProperty.resolveWith((states) {
              return BorderSide(
                  color:
                      context.watch<Language>().currentLanguage == languageTag
                          ? Colors.red
                          : Colors.grey[200],
                  width: 1);
            }),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0))),
          ),
          child: Text(
            language,
            style: TextStyle(
              color: context.watch<Language>().currentLanguage == languageTag
                  ? Colors.red
                  : Colors.grey[400],
            ),
          ),
        ),
      ),
    );
  }
}
