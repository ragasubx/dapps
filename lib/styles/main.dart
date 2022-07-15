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

  static Widget heading(BuildContext ctx, String text) {
    return Text(
      text,
      style: GoogleFonts.josefinSans(
          textStyle: Theme.of(ctx).textTheme.headline5,
          color: WalletColors.fifthColor),
    ).padding(all: 16);
  }

  static Widget dialogTitle(BuildContext ctx, String text) {
    return Text(
      text,
      style: GoogleFonts.josefinSans(),
    ).fontWeight(FontWeight.w600).textColor(WalletColors.fifthColor);
  }

  static Widget subtitle(BuildContext ctx, String text,
      {TextAlign textAlign = TextAlign.start}) {
    return Text(
      text,
    )
        .textAlignment(textAlign)
        .textColor(WalletColors.secondaryColor)
        .padding(all: 16);
  }

  static Widget primaryButton(BuildContext ctx, String text, onPress) {
    return TextButton(
        onPressed: onPress,
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(vertical: 8, horizontal: 20)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: WalletColors.palleteColor)))),
        child: Text(
          text,
        ).textColor(WalletColors.palleteColor).fontWeight(FontWeight.w500));
  }

  static Widget primaryButtonBox(BuildContext ctx, String text, onPress) {
    return TextButton(
        onPressed: onPress,
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(vertical: 8, horizontal: 20)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side: const BorderSide(color: WalletColors.palleteColor)))),
        child: Text(
          text,
        ).textColor(WalletColors.palleteColor).fontWeight(FontWeight.w500));
  }

  static Widget secondaryButtonBox(BuildContext ctx, String text, onPress) {
    return TextButton(
        onPressed: onPress,
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(vertical: 8, horizontal: 20)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side:
                        const BorderSide(color: WalletColors.secondaryColor)))),
        child: Text(
          text,
        ).textColor(WalletColors.secondaryColor).fontWeight(FontWeight.w500));
  }
}
