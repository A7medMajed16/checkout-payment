import 'package:dartz/dartz.dart';
import 'package:payment_checkout/core/errors/failures.dart';
import 'package:payment_checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';

abstract class CheckOutRepos {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
