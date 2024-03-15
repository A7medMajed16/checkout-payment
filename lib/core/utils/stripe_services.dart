import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_checkout/core/utils/api_keys.dart';
import 'package:payment_checkout/core/utils/api_services.dart';
import 'package:payment_checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_checkout/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeServices {
  final ApiService apiService = ApiService(Dio());

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
      endPoint: 'payment_intents',
      body: paymentIntentInputModel.toJason(),
      token: ApiKeys.secretKey,
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future<void> initPaymentSheet(
      {required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Ahmed Majed',
        paymentIntentClientSecret: paymentIntentClientSecret,
      ),
    );
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    PaymentIntentModel paymentIntentModel =
        await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
}
