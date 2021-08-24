import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/common/number_inoput.dart';
import 'package:provider/provider.dart';
import 'package:my_airtel_app/providers/configure_progress_provider.dart';
import 'package:my_airtel_app/widgets/common/button.dart';

class GetNumberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter your\nmobile number',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 30)),
                Padding(
                  padding: const EdgeInsets.only(top: 19.0),
                  child: Text('Sign in to connect with My Airtel',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.black87)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 55.0),
                  child: NumberInput(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Text(
                    'Got a invite code?',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 15),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      border: Border.all(color: (Colors.grey[200])!),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Eg. AT01234',
                      contentPadding: EdgeInsets.only(left: 10),
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey[300]),
                    ),
                  ),
                ),
              ],
            ),
            Button("Next", context.read<ConfigureProgress>().proceed, 3),
          ],
        ),
      ),
    );
  }
}
