import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:my_airtel_app/providers/auth_provider.dart';
import 'package:my_airtel_app/providers/configure_progress_provider.dart';
import 'package:my_airtel_app/widgets/common/appBar.dart';
import 'package:my_airtel_app/widgets/common/button.dart';
import 'package:my_airtel_app/widgets/common/carasoul.dart';
import 'package:my_airtel_app/widgets/common/flash_deals.dart';
import 'package:my_airtel_app/widgets/common/price_tag.dart';
import 'package:my_airtel_app/widgets/home_screen/airtel_thanks.dart';
import 'package:my_airtel_app/widgets/home_screen/connection_status_indicator.dart';
import 'package:my_airtel_app/widgets/home_screen/data_sms_voice_balance_container.dart';
import 'package:my_airtel_app/widgets/home_screen/flash_deal_container_card.dart';
import 'package:my_airtel_app/widgets/home_screen/home_background.dart';
import 'package:my_airtel_app/widgets/home_screen/recharge_card.dart';
import 'package:my_airtel_app/widgets/home_screen/recommended_packs.dart';
import 'package:my_airtel_app/widgets/home_screen/special_offers.dart';
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
              HomeBackground(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [ConnectionStatus(), AirtelThanks()],
                        ),
                        ComplicatedImageDemo(),
                        DataSmsVoiceContainer(),
                        RechargeCard(),
                        FlashDealContainer(),
                        SpecialOffers(),
                        RecommondedPacks(),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Container(
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://scontent.fcmb11-1.fna.fbcdn.net/v/t39.30808-6/210132141_4120569557980429_6834787666218910767_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=e3f864&_nc_ohc=E4-XrcKt4cYAX-uLMH1&_nc_ht=scontent.fcmb11-1.fna&oh=03b456c86e90c74b3517718ef209bd0d&oe=61201B2F'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 200,
                        ),
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
