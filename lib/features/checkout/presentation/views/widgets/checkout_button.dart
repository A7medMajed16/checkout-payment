import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/colors.data.dart';
import 'package:payment_checkout/core/utils/styles.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: ColorsData.primerColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle22W600
              .copyWith(color: ColorsData.buttonTextColor),
        ),
      ),
    );
  }
}
