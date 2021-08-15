import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_airtel_app/providers/language_provider.dart';
import 'package:provider/provider.dart';

class LanguageCard extends StatelessWidget {
  final String language;
  final String sample;

  const LanguageCard({@required this.language, @required this.sample});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
                color: context.read<Language>().currentLanguage == language
                    ? Colors.red
                    : Colors.grey[100])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      language,
                      style: TextStyle(
                          color: context.read<Language>().currentLanguage ==
                                  language
                              ? Colors.black
                              : Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(sample,
                        style: TextStyle(
                            fontSize: 12,
                            color: context.read<Language>().currentLanguage ==
                                    language
                                ? Colors.black
                                : Colors.grey)),
                  )
                ],
              ),
              Icon(
                Icons.beenhere,
                color: context.read<Language>().currentLanguage == language
                    ? Colors.red
                    : Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
