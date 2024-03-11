import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class TotalCost extends StatelessWidget {
  const TotalCost({super.key, required this.totalCost});
  final double totalCost;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total',
            style: Styles.textStyle24W700,
          ),
          Text(
            '$totalCost \$',
            style: Styles.textStyle24W700,
          ),
        ],
      ),
    );
  }
}
