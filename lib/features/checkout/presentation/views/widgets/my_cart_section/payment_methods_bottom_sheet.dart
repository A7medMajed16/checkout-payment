import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/checkout_button.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/payment_details_section/payment_methods_list.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PaymentMethodsList(),
          const SizedBox(
            height: 40,
          ),
          CheckoutButton(
            text: 'Pay now',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
