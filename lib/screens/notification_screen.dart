import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/common/button_new.dart';
import 'package:my_airtel_app/widgets/common/icon_with_badge.dart';
import 'package:my_airtel_app/widgets/notificatio_screen/notification_card.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.grey[800],
        actions: 1 == 1
            ? [
                IconButton(
                  visualDensity:
                      VisualDensity(horizontal: -4.0, vertical: -4.0),
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
              ]
            : [],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFFF4F4F4),
            child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recent',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[700]),
                            ),
                            Text(
                              'Mark all as read',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: NotificationCard(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: NotificationCard(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Ealier',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[700]),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: NotificationCard(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: NotificationCard(),
                        )
                      ],
                    ),
                  ),
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 33.0, left: 20.0, right: 20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                color: Colors.white,
                child: ButtonNew(
                  lable: "Delete",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*
Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Recent'), Text('MArk as as read')],
            )
          ],
        ),
        */