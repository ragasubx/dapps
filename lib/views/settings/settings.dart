import 'package:dapps/styles/main.dart';
import 'package:dapps/views/settings/settings_menu_item_view.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WalletStyles.title(ctx, 'Settings'),
        Expanded(
          child: Container(),
        ),
        ListView(
          padding: const EdgeInsets.all(16),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            buildSettingMenuItem(ctx, text: 'Delete All Wallet', filled: true),
            buildSettingMenuItem(ctx, text: 'Disconnect All Session'),
          ],
        )
      ],
    );
  }
}
