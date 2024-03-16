import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/my_cart_section/checkout_button_bloc_consumer.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/payment_details_section/payment_methods_list.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodsList(),
          SizedBox(
            height: 40,
          ),
          CheckOutButtonConsumer(),
        ],
      ),
    );
  }
}
