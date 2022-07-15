import 'package:dapps/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletStyles {
  static Widget title(BuildContext ctx, String text) {
    return Text(
      text,
      style: GoogleFonts.josefinSans(
          textStyle: Theme.of(ctx).textTheme.headline3,
          color: WalletColors.primaryColor),
    ).padding(all: 16, top: 32);
  }
}
