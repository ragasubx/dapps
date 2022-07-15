import 'package:dapps/styles/main.dart';
import 'package:dapps/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WalletStyles.title(context, "Settings"),
        Expanded(child: Container())
      ],
    );
  }
}
