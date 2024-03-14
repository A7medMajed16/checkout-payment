import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:payment_checkout/features/checkout/presentation/views/widgets/receipt_section/receipt_body.dart';

class ReceiptView extends StatelessWidget {
  const ReceiptView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          size: 50,
          color: Colors.black,
        ),
        leading: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(Icons.arrow_back_rounded)),
      ),
      body: Transform.translate(
        offset: const Offset(0, -60),
        child: const ReceiptBody(),
      ),
    );
  }
}
