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
        NavigationDestination(
            selectedIcon: Icon(Icons.list),
            icon: Icon(Icons.list_outlined),
            label: 'Accounts'),
        NavigationDestination(
          selectedIcon: Icon(Icons.qr_code),
          icon: Icon(Icons.qr_code_outlined),
          label: 'Pair',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.settings),
          icon: Icon(Icons.settings_outlined),
          label: 'Settings',
        ),
      ],
    );
  }
}
