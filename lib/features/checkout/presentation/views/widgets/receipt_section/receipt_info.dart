import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/receipt_section/receipt_item_info.dart';

class ReceiptInfo extends StatelessWidget {
  const ReceiptInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ReceiptItemInfo(title: 'Date', info: '01/24/2023'),
        SizedBox(height: 20),
        ReceiptItemInfo(title: 'Time', info: '10:15 AM'),
        SizedBox(height: 20),
        ReceiptItemInfo(title: 'To', info: 'Ahmed Majed'),
        SizedBox(height: 30),
      ],
    );
  }
}
