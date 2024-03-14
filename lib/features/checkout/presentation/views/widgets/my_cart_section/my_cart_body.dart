import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/assets_data.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/my_cart_section/cart_item_info.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/checkout_button.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/my_cart_section/payment_methods_bottom_sheet.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/total_cost.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 22),
            Center(
              child: Image.asset(AssetsData.cartBasketPath),
            ),
            const SizedBox(height: 25),
            const CartItemInfo(
              item: 'Order Subtotal',
              price: 42.97,
            ),
            const CartItemInfo(
              item: 'Discount',
              price: 0,
            ),
            const CartItemInfo(
              item: 'Shipping',
              price: 8,
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(thickness: 2),
            ),
            const SizedBox(height: 15),
            const TotalCost(
              totalCost: 50.67,
            ),
            const SizedBox(height: 15),
            CheckoutButton(
                text: 'Complete Payment',
                onPressed: () => showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      context: context,
                      builder: (context) => const PaymentMethodsBottomSheet(),
                    )),
          ],
        ),
      ),
    );
  }
}
