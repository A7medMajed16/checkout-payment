import 'package:flutter/material.dart';

import 'package:payment_checkout/features/checkout/presentation/views/widgets/receipt_section/receipt_ticket.dart';

class ReceiptBody extends StatelessWidget {
  const ReceiptBody({super.key});

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 70),
      child: ReceiptTicket(hight: hight),
    );
  }
}
