import 'package:flutter/material.dart';
import 'package:my_airtel_app/providers/auth_provider.dart';
import 'package:my_airtel_app/providers/configure_progress_provider.dart';
import 'package:my_airtel_app/screens/configure_screen.dart';
import 'package:my_airtel_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ConfigureProgress()),
      ChangeNotifierProvider(create: (_) => Auth())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: context.watch<Auth>().isAuthenticated
          ? HomeScreen()
          : ConfigureScreen(),
    );
  }
}
