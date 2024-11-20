import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarCode extends StatelessWidget {
  const BarCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(21),
              bottomRight: Radius.circular(21)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BarcodeWidget(
            height: 70,
            barcode: Barcode.code128(),
            data: 'https://www.youtube.com/',
            drawText: false,
            color: Colors.black,
            width: double.infinity,
          ),
        ));
  }
}
