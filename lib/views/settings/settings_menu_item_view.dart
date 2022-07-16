import 'package:dapps/styles/main.dart';
import 'package:flutter/material.dart';

Widget buildSettingMenuItem(BuildContext ctx,
    {String text = '', void Function()? onPress, bool filled = false}) {
  return filled
      ? WalletStyles.primaryButtonBoxFilled(ctx, text: text, onPress: onPress)
      : WalletStyles.primaryButtonBox(ctx, text: text, onPress: onPress);
}
