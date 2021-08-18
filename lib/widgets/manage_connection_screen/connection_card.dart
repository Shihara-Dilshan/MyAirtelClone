import 'package:flutter/material.dart';
import 'package:my_airtel_app/widgets/manage_connection_screen/primary_conn_button.dart';

class ConnectionCard extends StatelessWidget {
  final bool primary;
  final String name;
  final String number;

  const ConnectionCard(
      {required this.primary, required this.name, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 20,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: const EdgeInsets.only(
              left: 15.0, top: 10.0, right: 15.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16,
                            color: primary ? Colors.black : Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: primary
                            ? PrimaryConnectionBtn()
                            : SizedBox(
                                width: 0,
                              ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    number,
                    style: TextStyle(
                        fontSize: 14,
                        color: primary ? Colors.black : Colors.grey),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.edit,
                    size: 20,
                    color: Colors.grey[500],
                  ),
                  primary
                      ? Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Icon(
                            Icons.delete,
                            size: 20,
                            color: Colors.grey[500],
                          ),
                        )
                      : SizedBox(
                          width: 0,
                        )
                ],
              )
            ],
          )),
    );
  }
}
