import 'package:dapps/models/wallet.dart';
import 'package:dapps/styles/colors.dart';
import 'package:dapps/styles/main.dart';
import 'package:dapps/views/accounts/account_list_view.dart';
import 'package:dapps/views/accounts/create_eth_wallet_pop_view.dart';
import 'package:dapps/views/accounts/no_account_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  var walletList = [];

  @override
  void initState() {
    super.initState();
    _refreshAccountList();
  }

  void _refreshAccountList() async {
    var wallet = await Wallet().getWallet();
    setState(() {
      walletList = wallet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WalletStyles.title(context, 'Accounts'),
            Expanded(
                child: walletList.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: false,
                        itemCount: walletList.length,
                        physics: const ScrollPhysics(),
                        itemBuilder: (ctx, ix) => buildAccountList(
                            ctx, 'Ethereum', walletList[ix]['hexAddr']))
                    : buildNoaccount(context, _refreshAccountList))
          ],
        ),
        Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              backgroundColor: WalletColors.palleteColor,
              child: const Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) =>
                        createEthWalletPopup(ctx, _refreshAccountList));
              },
            )),
      ],
    );
  }
}
