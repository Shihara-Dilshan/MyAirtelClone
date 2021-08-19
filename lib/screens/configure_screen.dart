import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_airtel_app/providers/configure_progress_provider.dart';
import 'package:my_airtel_app/widgets/configure_screen/configure_get_number.dart';
import 'package:my_airtel_app/widgets/configure_screen/configure_otp_confirm.dart';
import 'package:my_airtel_app/widgets/configure_screen/configure_welcome.dart';

class ConfigureScreen extends StatelessWidget {
  final List<Widget> tabs = [
    WelcomeWideget(),
    GetNumberWidget(),
    OTPConfirmWidget()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  //Widget currentScreen = GetNumberWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 10.0,
        title: Image.asset(
          'assets/images/AirtelLogo.png',
          height: 60,
        ),
        actions: 1 == 1
            ? [
                IconButton(
                  icon: const Icon(
                    Icons.sort_by_alpha,
                    color: Colors.grey,
                  ),
                  tooltip: 'Open shopping cart',
                  onPressed: () {
                    // handle the press
                  },
                ),
              ]
            : [],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: 1 == 1
                ? AssetImage("assets/images/background.jpeg")
                : AssetImage("assets/images/backgroundwhite.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: PageStorage(
            bucket: bucket,
            child: context.watch<ConfigureProgress>().current,
          ),
        ) /* add child content here */,
      ),
    );
  }
}
