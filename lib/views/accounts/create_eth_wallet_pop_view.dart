import 'package:dapps/models/wallet.dart';
import 'package:dapps/styles/main.dart';
import 'package:flutter/material.dart';

Widget createEthWalletPopup(BuildContext ctx, Function callback) {
  return AlertDialog(
    title: WalletStyles.dialogTitle(ctx, 'Confirmation'),
    content:
        const Text('Do you want to create new wallet address on this device?'),
    actions: [
      WalletStyles.secondaryButtonBox(ctx, text: 'Cancel', onPress: () {
        Navigator.of(ctx).pop();
      }),
      WalletStyles.primaryButtonBox(ctx, text: 'Confirm', onPress: () async {
        await Wallet().createWallet();
        callback();
        Navigator.of(ctx).pop();
      })
    ],
  );
}
