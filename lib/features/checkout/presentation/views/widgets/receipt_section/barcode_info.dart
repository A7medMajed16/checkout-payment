import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class BarCodeInfo extends StatelessWidget {
  const BarCodeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          FontAwesomeIcons.barcode,
          size: 100,
        ),
        Container(
          height: 65,
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 15),
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xff34A853),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            'PAID',
            textAlign: TextAlign.center,
            style:
                Styles.textStyle24W700.copyWith(color: const Color(0xff34A853)),
          ),
        ),
      ],
    );
  }
}
