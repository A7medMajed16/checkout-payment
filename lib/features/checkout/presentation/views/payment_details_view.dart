import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/build_custom_app_bar.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/payment_details_section/payment_detail_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'Payment Details'),
      body: const PaymentDetailsBody(),
    );
  }
}
