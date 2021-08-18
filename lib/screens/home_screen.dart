import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:my_airtel_app/screens/tabs/history.dart';
import 'package:my_airtel_app/screens/tabs/home.dart';
import 'package:my_airtel_app/screens/tabs/more.dart';
import 'package:my_airtel_app/screens/tabs/movies.dart';
import 'package:my_airtel_app/widgets/common/icon_with_badge.dart';
import 'package:my_airtel_app/widgets/common/language_choose_model.dart';
import 'package:my_airtel_app/widgets/common/more_menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  int _currentTab = 0;
  final List<Widget> tabs = [Home(), History(), Movies(), More()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: false,
        backgroundColor: Colors.grey[800],
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.grey[800]),
        elevation: 0,
        titleSpacing: 10.0,
        title: Image.asset(
          'assets/images/AirtelLogoWhite.png',
          height: 60,
        ),
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
                  onPressed: () {
                    1 == 1
                        ? showMaterialModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => SingleChildScrollView(
                              controller: ModalScrollController.of(context),
                              child: ChooseLangauge(),
                            ),
                          )
                        : showCupertinoModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => ChooseLangauge(),
                          );
                  },
                ),
                IconWithBadge(
                  text: 'Inbox',
                  iconData: Icons.notifications,
                  notificationCount: 11,
                  onTap: () {
                    Navigator.pushNamed(context, "/notifications");
                  },
                )
              ]
            : [],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 1,
                onPressed: () {
                  setState(() {
                    currentScreen = Home();
                    _currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home,
                        size: 27,
                        color: _currentTab == 0 ? Colors.red : Colors.grey),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: _currentTab == 0 ? Colors.red : Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 1,
                onPressed: () {
                  setState(() {
                    currentScreen = History();
                    _currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.today_outlined,
                        size: 27,
                        color: _currentTab == 1 ? Colors.red : Colors.grey),
                    Text(
                      'History',
                      style: TextStyle(
                          color: _currentTab == 1 ? Colors.red : Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                width: 50,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/airtel_icon.png'),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
              MaterialButton(
                minWidth: 1,
                onPressed: () {
                  setState(() {
                    currentScreen = Movies();
                    _currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.movie_creation_outlined,
                        size: 27,
                        color: _currentTab == 2 ? Colors.red : Colors.grey),
                    Text(
                      'Movies',
                      style: TextStyle(
                          color: _currentTab == 2 ? Colors.red : Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 1,
                onPressed: () {
                  1 == 1
                      ? showMaterialModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) => SingleChildScrollView(
                            controller: ModalScrollController.of(context),
                            child: MoreMenu(),
                          ),
                        )
                      : showCupertinoModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) => MoreMenu(),
                        );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.list,
                        size: 27,
                        color: _currentTab == 3 ? Colors.red : Colors.grey),
                    Text(
                      'More',
                      style: TextStyle(
                          color: _currentTab == 3 ? Colors.red : Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: PageStorage(
            bucket: bucket,
            child: currentScreen,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.message_outlined,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        onPressed: () => {},
        heroTag: null,
      ),
    );
  }
}
