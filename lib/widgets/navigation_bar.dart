import 'package:dapps/styles/colors.dart';
import 'package:flutter/material.dart';

class WalletNavigationBar extends StatelessWidget {
  const WalletNavigationBar(this.selectedIndex, this.onTabChanged, {Key? key})
      : super(key: key);

  final int selectedIndex;
  final Function onTabChanged;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        onTabChanged(index);
      },
      backgroundColor: WalletColors.secondaryColor,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.list), label: 'Accounts'),
        NavigationDestination(
          icon: Icon(Icons.qr_code),
          label: 'Pair',
        ),
        NavigationDestination(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
