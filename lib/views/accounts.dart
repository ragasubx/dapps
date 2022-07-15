import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:dapps/styles/colors.dart';
import 'package:dapps/styles/main.dart';
import 'package:dapps/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_widget/styled_widget.dart';

class Accounts extends StatelessWidget {
  const Accounts({Key? key}) : super(key: key);

  Widget _buildAccountList(BuildContext ctx, String wallet, String address) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: WalletColors.secondaryColor, width: 1)),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const Icon(CryptoFontIcons.ETH).padding(right: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(wallet,
                        style: GoogleFonts.barlow(fontWeight: FontWeight.bold)),
                    Text(
                      address,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WalletStyles.title(context, "Accounts"),
        Expanded(
          child: ListView.builder(
              shrinkWrap: false,
              itemCount: 100,
              physics: const ScrollPhysics(),
              itemBuilder: (ctx, ix) {
                return _buildAccountList(ctx, "Ethereum",
                    "0x9273A3F1dFfd4F8A9d07BF603acbf534C376F174");
              }),
        )
      ],
    );
  }
}
