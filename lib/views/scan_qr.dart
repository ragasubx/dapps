import 'package:dapps/styles/main.dart';
import 'package:dapps/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class ScanQR extends StatelessWidget {
  const ScanQR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WalletStyles.title(context, "Pair");
  }
}
