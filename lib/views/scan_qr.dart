import 'package:dapps/styles/colors.dart';
import 'package:dapps/styles/main.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQR extends StatelessWidget {
  const ScanQR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WalletStyles.title(context, "Pair"),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: WalletColors.secondaryColor, width: 5)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: MobileScanner(
                        fit: BoxFit.cover,
                        allowDuplicates: false,
                        onDetect: (barcode, args) {
                          if (barcode.rawValue == null) {
                            debugPrint('Failed to scan Barcode');
                          } else {
                            final String code = barcode.rawValue!;
                            debugPrint('Barcode found! $code');
                          }
                        }),
                  ),
                ),
              ),
              Text("or").padding(all: 16),
              TextField(
                decoration: InputDecoration(hintText: "Input your code here"),
              ).padding(all: 16)
            ],
          ),
        )
      ],
    );
  }
}
