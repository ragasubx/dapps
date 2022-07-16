import 'package:dapps/styles/main.dart';
import 'package:dapps/views/accounts/create_eth_wallet_pop_view.dart';
import 'package:flutter/material.dart';

Widget buildNoaccount(BuildContext ctx, Function callback) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WalletStyles.heading(ctx, 'No Account'),
        WalletStyles.subtitle(ctx,
            "You currently doesn't have any wallet accounts. To create one press the button below.",
            textAlign: TextAlign.center),
        WalletStyles.primaryButton(ctx, 'Create Wallet', () {
          showDialog(
              context: ctx,
              builder: (BuildContext ctx) {
                return createEthWalletPopup(ctx, callback);
              });
        })
      ],
    ),
  );
}
