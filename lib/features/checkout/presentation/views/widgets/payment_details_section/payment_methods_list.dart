import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/assets_data.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/payment_details_section/payment_method_card.dart';

class PaymentMethodsList extends StatefulWidget {
  const PaymentMethodsList({super.key});

  @override
  State<PaymentMethodsList> createState() => _PaymentMethodsListState();
}

class _PaymentMethodsListState extends State<PaymentMethodsList> {
  final List<String> methodsLogosPaths = [
    AssetsData.cardPath,
    AssetsData.payPalLogoPath,
    AssetsData.applePayLogoPath
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.separated(
        itemCount: methodsLogosPaths.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            activeIndex = index;
            setState(() {});
          },
          child: PaymentMethodsCard(
            methodLogoPath: methodsLogosPaths[index],
            isActive: activeIndex == index,
          ),
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 30,
        ),
      ),
    );
  }
}
