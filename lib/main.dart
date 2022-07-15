import 'package:dapps/views/scan_qr.dart';
import 'package:dapps/views/settings.dart';
import 'package:dapps/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:dapps/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DApps',
      theme:
          ThemeData(primarySwatch: Colors.blue, platform: TargetPlatform.iOS),
      initialRoute: "/",
      routes: {
        "/": (ctx) => const SplashScreen(),
        "/home": (ctx) => const Home(),
      },
    );
  }
}
