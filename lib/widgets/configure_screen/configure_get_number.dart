import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_airtel_app/providers/configure_progress_provider.dart';
import 'package:my_airtel_app/widgets/common/button.dart';

class GetNumberWidget extends StatelessWidget {
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
                Text('Enter your\nmobile number',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
                Text('Sign in to connect with My Airtel',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.black87)),
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              border: Border.all(color: Colors.grey[200]),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5))),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              '075',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[700]),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[50],
                              border: Border.all(color: Colors.grey[200]),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '000-0000',
                              contentPadding: EdgeInsets.only(left: 10),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey[300]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
                  child: Text(
                    'Got a invite code?',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 15),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      border: Border.all(color: Colors.grey[200]),
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
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Button(
                      "Next", context.read<ConfigureProgress>().proceed, 3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
