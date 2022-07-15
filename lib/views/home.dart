import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:dapps/styles/colors.dart';
import 'package:dapps/styles/main.dart';
import 'package:dapps/views/accounts.dart';
import 'package:dapps/views/scan_qr.dart';
import 'package:dapps/views/settings.dart';
import 'package:dapps/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_widget/styled_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: WalletNavigationBar(_currentTab, (int index) {
          setState(() {
            _currentTab = index;
          });
        }),
        body: SafeArea(
          child: [Accounts(), ScanQR(), Settings()][_currentTab],
        ));
  }
}
