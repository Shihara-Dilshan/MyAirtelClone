import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_airtel_app/providers/auth_provider.dart';
import 'package:my_airtel_app/providers/configure_progress_provider.dart';
import 'package:my_airtel_app/widgets/common/appBar.dart';
import 'package:my_airtel_app/widgets/common/button.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
          enablePullDown: true,
          enablePullUp: false,
          header: WaterDropHeader(),
          footer: CustomFooter(
            builder: (BuildContext context, LoadStatus mode) {
              Widget body;
              if (mode == LoadStatus.idle) {
                body = Text("pull up load");
              } else if (mode == LoadStatus.loading) {
                body = CupertinoActivityIndicator();
              } else if (mode == LoadStatus.failed) {
                body = Text("Load Failed!Click retry!");
              } else if (mode == LoadStatus.canLoading) {
                body = Text("release to load more");
              } else {
                body = Text("No more Data");
              }
              return Container(
                height: 55.0,
                child: Center(child: body),
              );
            },
          ),
          controller: _refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(40.0),
                                bottomLeft: Radius.circular(40.0)),
                          ),
                          width: MediaQuery.of(context).size.width,
                        )),
                    Expanded(
                        flex: 4,
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                    top: 7.0,
                                    bottom: 7.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '750935556',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                      ),
                                    ),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[700],
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[900],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                    top: 7.0,
                                    bottom: 7.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'airtelThanks',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                            color: Colors.red[700],
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Icon(
                                          Icons.keyboard_arrow_right,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data'),
                        Text('data')
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
