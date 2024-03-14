import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/colors.data.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class ReceiptItemInfo extends StatelessWidget {
  const ReceiptItemInfo({
    super.key,
    required this.title,
    required this.info,
  });
  final String title;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.textStyle18W500
                .copyWith(color: ColorsData.mainTextColor),
          ),
          Text(
            info,
            style: Styles.textStyle18W700,
          ),
        ],
      ),
    );
  }
}
