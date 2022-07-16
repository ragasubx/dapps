import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:dapps/styles/colors.dart';
import 'package:dapps/styles/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/services.dart';

Widget _modalAccountDetail(BuildContext ctx, {String address = ''}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        WalletStyles.dialogTitle(ctx, 'Account Detail', fontSize: 28)
            .padding(bottom: 16),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: WalletColors.secondaryColor,
              ),
              child: const Icon(
                CryptoFontIcons.ETH,
                size: 32,
                color: Colors.white,
              ),
            ),
            const Text('Ethereum'),
          ],
        ).padding(bottom: 16),
        WalletStyles.subtitle(ctx, 'Wallet Address', padding: 0)
            .padding(bottom: 8),
        Text(
          address,
          style: GoogleFonts.ubuntuMono(),
        ).padding(bottom: 16),
        Row(
          children: [
            Expanded(
                child: WalletStyles.secondaryButtonBox(ctx, text: 'Close',
                    onPress: () {
              Navigator.pop(ctx);
            }).padding(right: 4)),
            Expanded(
                child: WalletStyles.secondaryButtonBox(ctx,
                    text: 'Copy Address', onPress: () {
              Clipboard.setData(ClipboardData(text: address)).then((_) {
                Navigator.pop(ctx);

                ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
                    content: Text(
                        'Wallet address successfully copied to clipboard')));
              });
            }).padding(left: 4)),
          ],
        )
        // ElevatedButton(
        //   child: const Text('Close BottomSheet'),
        //   onPressed: () => Navigator.pop(ctx),
        // )
      ],
    ),
  );
}

Widget buildAccountList(BuildContext ctx, String wallet, String address) {
  return Container(
    margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: WalletColors.secondaryColor, width: 1)),
    child: InkWell(
      onTap: () {
        showModalBottomSheet(
            context: ctx,
            builder: (ctx) => _modalAccountDetail(ctx, address: address));
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(CryptoFontIcons.ETH).padding(right: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(wallet).fontWeight(FontWeight.bold),
                  Text(
                    address,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.ubuntuMono(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
