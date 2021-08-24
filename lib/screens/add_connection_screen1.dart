import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/common/button_new.dart';
import 'package:my_airtel_app/widgets/common/icon_with_badge.dart';
import 'package:my_airtel_app/widgets/common/number_inoput.dart';
import 'package:my_airtel_app/widgets/manage_connection_screen/connection_card.dart';
import 'package:my_airtel_app/widgets/notificatio_screen/notification_card.dart';

class AddConnection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Add Connection',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.grey[800],
          actions: [
            IconButton(
              visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.sort_by_alpha,
                color: Colors.grey,
              ),
              tooltip: 'Open shopping cart',
              onPressed: () {},
            ),
            IconWithBadge(
              text: 'Inbox',
              iconData: Icons.notifications,
              notificationCount: 11,
              onTap: () {},
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 333,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF585858).withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You can add up to 10 connections. This will help you seamlessly manage all your accounts under one app.',
                        style: TextStyle(fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Text(
                          'Enter number',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: NumberInput(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          'Set a Nick Name',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        color: Colors.white,
                        child: ButtonNew(
                          lable: "Proceed",
                          callback: () {
                            print(21);
                            Navigator.pushNamed(context, "/addconnection2");
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
