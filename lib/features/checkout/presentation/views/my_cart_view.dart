import 'package:flutter/material.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/build_custom_app_bar.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/my_cart_section/my_cart_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'My Cart'),
      body: const MyCartViewBody(),
    );
  }
}
