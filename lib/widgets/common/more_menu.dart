import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/common/more_menu_header.dart';
import 'package:my_airtel_app/widgets/common/select_language_card.dart';

List<List<dynamic>> data = [
  [
    'Packs & Reload',
    Icons.credit_card_off_sharp,
    (ctx) {
      Navigator.pushNamed(ctx, "/managecon");
    }
  ],
  [
    'Manage Connections',
    Icons.connected_tv,
    (ctx) {
      Navigator.pushNamed(ctx, "/managecon");
    }
  ],
  ['My Usage', Icons.grass_sharp, () {}],
  ['My Balance', Icons.credit_card, () {}],
  ['Entertaintment', Icons.movie, () {}],
  ['Invite Friends', Icons.g_mobiledata, () {}],
  ['IDD & Roaming', Icons.inventory_2_outlined, () {}],
  ['Get Help', Icons.verified, () {}],
  ['Give Feedback', Icons.star, () {}]
];

class MoreMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          height: MediaQuery.of(context).size.height - 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)),
          ),
          child: Column(
            children: <Widget>[
              MoreMenuHeader(),
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 10.0),
                        child: ListTile(
                          horizontalTitleGap: 18,
                          selected: true,
                          onTap: () {
                            data[index][2](context);
                          },
                          leading: Container(
                            width: 34,
                            height: 34,
                            child: Icon(
                              data[index][1],
                              color: Colors.red,
                              size: 17,
                            ),
                            decoration: BoxDecoration(
                              color: (Colors.red[50])!.withOpacity(0.2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                          ),
                          title: Text(
                            data[index][0],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
