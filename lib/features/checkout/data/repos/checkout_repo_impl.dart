import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:payment_checkout/core/errors/failures.dart';
import 'package:payment_checkout/core/utils/stripe_services.dart';
import 'package:payment_checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_checkout/features/checkout/data/repos/checkout_repo.dart';

class CheckOutRepoImpl implements CheckOutRepos {
  final StripeServices stripeServices = StripeServices();

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeServices.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
