import 'package:flutter/material.dart';
import 'package:my_airtel_app/providers/auth_provider.dart';
import 'package:my_airtel_app/providers/configure_progress_provider.dart';
import 'package:my_airtel_app/providers/data_type_provider.dart';
import 'package:my_airtel_app/providers/language_provider.dart';
import 'package:my_airtel_app/screens/configure_screen.dart';
import 'package:my_airtel_app/screens/home_screen.dart';
import 'package:my_airtel_app/screens/notification_screen.dart';
import 'package:my_airtel_app/screens/manage_connection_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ConfigureProgress()),
      ChangeNotifierProvider(create: (_) => Auth()),
      ChangeNotifierProvider(create: (_) => DataType()),
      ChangeNotifierProvider(create: (_) => Language()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => context.watch<Auth>().isAuthenticated
            ? HomeScreen()
            : ConfigureScreen(),
        "/notifications": (context) => Notifications(),
        "/managecon": (context) => ManageConnections(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
      ),
      // home: context.watch<Auth>().isAuthenticated
      //     ? HomeScreen()
      //     : ConfigureScreen(),
    ));
  }
}
