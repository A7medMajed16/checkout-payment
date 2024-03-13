import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/colors.data.dart';

class CheckedCircle extends StatelessWidget {
  const CheckedCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: ColorsData.receiptTicketBackgroundColor,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: ColorsData.primerColor,
        child: Icon(
          Icons.check_rounded,
          color: Colors.white,
          size: 60,
        ),
      ),
    );
  }
}
