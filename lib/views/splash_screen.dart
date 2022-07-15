import 'dart:io';

import 'package:dapps/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (Platform.isAndroid) FlutterDisplayMode.setHighRefreshRate();
      await Future.delayed(const Duration(seconds: 1),
          () => {Navigator.pushReplacementNamed(context, "/home")});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WalletColors.primaryColor,
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ragasubx',
            style: GoogleFonts.josefinSans(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "Wallet",
            style: GoogleFonts.cabin(color: Colors.white),
          )
        ],
      )),
    );
  }
}
