import 'package:flutter/material.dart';
import 'package:my_airtel_app/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:my_airtel_app/providers/configure_progress_provider.dart';
import 'package:my_airtel_app/widgets/common/button.dart';

class OTPConfirmWidget extends StatelessWidget {
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
                Text('Enter OTP sent\nto your number',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 30)),
                Padding(
                  padding: const EdgeInsets.only(top: 19.0, bottom: 6.0),
                  child: Text('We sent a code to the number 075 XXX - XXXX',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.black87)),
                ),
                Text('Change my number',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.blueAccent)),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 21.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(color: (Colors.grey[200])!),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '0 0 0 0 0',
                        contentPadding: EdgeInsets.only(left: 10),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey[300]),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Resend OTP in 00:21',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Button("Continue", context.read<Auth>().changeAuthentication, 3),
          ],
        ),
      ),
    );
  }
}
