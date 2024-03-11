import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class CartItemInfo extends StatelessWidget {
  const CartItemInfo({
    super.key,
    required this.item,
    required this.price,
  });
  final String item;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item,
            style: Styles.textStyle18W500,
          ),
          Text(
            '$price \$',
            style: Styles.textStyle18W500,
          ),
        ],
      ),
    );
  }
}
