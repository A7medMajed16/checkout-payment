import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/colors.data.dart';
import 'package:payment_checkout/core/utils/styles.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/receipt_section/barcode_info.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/receipt_section/card_info.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/receipt_section/receipt_info.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/total_cost.dart';

class ReceiptTicketBody extends StatelessWidget {
  const ReceiptTicketBody({
    super.key,
    required this.hight,
  });
  final double hight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: hight,
      decoration: BoxDecoration(
        color: ColorsData.receiptTicketBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, right: 22, left: 22),
        child: Column(
          children: [
            Text(
              'Thank You!',
              style: Styles.textStyle25W700,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.textStyle20W500,
            ),
            const SizedBox(height: 42),
            const ReceiptInfo(),
            const Divider(color: Color(0xffC7C7C7), thickness: 2),
            const SizedBox(height: 24),
            const TotalCost(totalCost: 50.97),
            const SizedBox(height: 30),
            const CardInfo(),
            const Spacer(),
            const BarCodeInfo(),
            SizedBox(
              height: ((hight * 0.2 + 20) / 2) - 55,
            )
          ],
        ),
      ),
    );
  }
}
