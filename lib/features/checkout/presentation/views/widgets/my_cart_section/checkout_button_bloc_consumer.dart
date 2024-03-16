import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_checkout/core/utils/app_routers.dart';
import 'package:payment_checkout/core/utils/styles.dart';
import 'package:payment_checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_checkout/features/checkout/presentation/manager/cubit/stripe_payment_cubit.dart';
import 'package:payment_checkout/features/checkout/presentation/views/widgets/checkout_button.dart';

class CheckOutButtonConsumer extends StatelessWidget {
  const CheckOutButtonConsumer({
    super.key,
  });
  final bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      listener: (context, state) {
        if (state is StripePaymentSuccess) {
          GoRouter.of(context).push(AppRouter.kReceiptView);
        } else if (state is StripePaymentFailure) {
          GoRouter.of(context).pop();
          SnackBar snackBar = SnackBar(
            content: Text(
              state.errorMessage,
              style: Styles.textStyle18W500.copyWith(color: Colors.red[900]),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CheckoutButton(
          onPressed: () {
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(amount: '100', currency: 'usd');
            BlocProvider.of<StripePaymentCubit>(context)
                .makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
          text: 'Continue',
          isLoading: state is StripePaymentLoading,
        );
      },
    );
  }
}
