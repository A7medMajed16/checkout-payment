import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_checkout/features/checkout/data/repos/checkout_repo.dart';

part 'stripe_payment_state.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit(this.checkOutRepo) : super(StripePaymentInitial());

  final CheckOutRepos checkOutRepo;
  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(StripePaymentLoading());
    var response = await checkOutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    response.fold(
      (failure) => emit(StripePaymentFailure(failure.errorMessage)),
      (success) => emit(StripePaymentSuccess()),
    );
  }

  @override
  void onChange(Change<StripePaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
