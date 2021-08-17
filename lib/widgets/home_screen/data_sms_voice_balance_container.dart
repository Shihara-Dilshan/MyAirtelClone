import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_airtel_app/providers/data_type_provider.dart';

import 'data_details.dart';

class DataSmsVoiceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 30,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 38,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<DataType>().changeConenction('Data');
                        },
                        child: Text(
                          'Data',
                          style: TextStyle(
                              color:
                                  context.watch<DataType>().connection == 'Data'
                                      ? Colors.white
                                      : Colors.grey[400]),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            elevation: 0,
                            primary:
                                context.watch<DataType>().connection == 'Data'
                                    ? Colors.red
                                    : Colors.grey[100]),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<DataType>().changeConenction('SMS');
                        },
                        child: Text(
                          'SMS',
                          style: TextStyle(
                              color:
                                  context.watch<DataType>().connection == 'SMS'
                                      ? Colors.white
                                      : Colors.grey[400]),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            elevation: 0,
                            primary:
                                context.watch<DataType>().connection == 'SMS'
                                    ? Colors.red
                                    : Colors.grey[100]),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<DataType>().changeConenction('Voice');
                        },
                        child: Text(
                          'Voice',
                          style: TextStyle(
                              color: context.watch<DataType>().connection ==
                                      'Voice'
                                  ? Colors.white
                                  : Colors.grey[400]),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            elevation: 0,
                            primary:
                                context.watch<DataType>().connection == 'Voice'
                                    ? Colors.red
                                    : Colors.grey[100]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            context.watch<DataType>().connection == 'Data'
                ? DataDetails()
                : SizedBox.shrink(),
            context.watch<DataType>().connection == 'SMS'
                ? Text('SMS')
                : SizedBox.shrink(),
            context.watch<DataType>().connection == 'Voice'
                ? Text('Voice')
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
