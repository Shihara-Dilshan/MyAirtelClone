import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/common/button_new.dart';
import 'package:my_airtel_app/widgets/common/icon_with_badge.dart';
import 'package:my_airtel_app/widgets/manage_connection_screen/connection_card.dart';
import 'package:my_airtel_app/widgets/notificatio_screen/notification_card.dart';

class ManageConnections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Connections',
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
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: ConnectionCard(
                            primary: true,
                            name: "Shihara Dilshan",
                            number: "0750935556",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: ConnectionCard(
                            primary: false,
                            name: "john doe",
                            number: "0758965478",
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
          1 == 1
              ? Padding(
                  padding: const EdgeInsets.only(
                      bottom: 33.0, left: 20.0, right: 20.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      color: Colors.white,
                      child: ButtonNew(
                        lable: "Add Connection",
                        callback: () {
                          print(21);
                          Navigator.pushNamed(context, "/addconnection");
                        },
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  height: 0,
                )
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