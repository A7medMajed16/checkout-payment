import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
        child: Row(
          children: [
            Image.asset('assets/images/logoMasterCardLogo.png'),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Credit Card',
                  style: Styles.textStyle18W700,
                ),
                Text(
                  'Mastercard **78',
                  style: Styles.textStyle16W500,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
