import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_checkout/core/utils/colors.data.dart';

class PaymentMethodsCard extends StatelessWidget {
  const PaymentMethodsCard({
    super.key,
    required this.methodLogoPath,
    required this.isActive,
  });
  final String methodLogoPath;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: 103,
      height: 62,
      decoration: isActive == true
          ? BoxDecoration(
              border: Border.all(
                color: ColorsData.primerColor,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
                  BoxShadow(
                    color: ColorsData.primerColor,
                    blurRadius: 4,
                  ),
                ])
          : BoxDecoration(
              border: Border.all(
                color: ColorsData.nonActiveColor,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
      duration: const Duration(milliseconds: 300),
      child: Center(
        child: SvgPicture.asset(
          methodLogoPath,
          height: 24,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
