import 'package:flutter/material.dart';

import 'package:payment_checkout/features/checkout/presentation/views/widgets/receipt_section/receipt_body.dart';

class ReceiptView extends StatelessWidget {
  const ReceiptView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ReceiptBody(),
      ),
    );
  }
}
