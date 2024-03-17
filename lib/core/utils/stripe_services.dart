import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_checkout/core/utils/api_keys.dart';
import 'package:payment_checkout/core/utils/api_services.dart';
import 'package:payment_checkout/features/checkout/data/models/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:payment_checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:payment_checkout/features/checkout/data/models/payment_intent_input_model/payment_intent_sheet_input_model.dart';
import 'package:payment_checkout/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeServices {
  final ApiService apiService = ApiService();

  //Create the Payment Intent
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      endPoint: 'payment_intents',
      token: ApiKeys.secretKey,
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  //Initialize The Payment Sheet
  Future<void> initPaymentSheet(
      {required PaymentIntentSheetInputModel
          paymentIntentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Majed',
        paymentIntentClientSecret: paymentIntentSheetInputModel.clientSecret,
        customerEphemeralKeySecret:
            paymentIntentSheetInputModel.ephemeralKeySecret,
        customerId: paymentIntentSheetInputModel.customerId,
      ),
    );
  }

  //Display The Payment Sheet
  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  //do all the  payment process in one step
  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var ephemeralKeyModel = await createEphemeralKey(
        customerId: paymentIntentInputModel.customerId);
    PaymentIntentSheetInputModel paymentIntentSheetInputModel =
        PaymentIntentSheetInputModel(
      clientSecret: paymentIntentModel.clientSecret!,
      customerId: paymentIntentInputModel.customerId,
      ephemeralKeySecret: ephemeralKeyModel.secret!,
    );
    await initPaymentSheet(
        paymentIntentSheetInputModel: paymentIntentSheetInputModel);
    await displayPaymentSheet();
  }

  //Create  a new Stripe Customer
  Future<PaymentIntentModel> createCustomer(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      endPoint: 'customers',
      token: ApiKeys.secretKey,
    );

    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);

    return paymentIntentModel;
  }

  //Create an Ephemeral Key for the user
  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.post(
      body: {
        'customer': customerId,
      },
      contentType: Headers.formUrlEncodedContentType,
      endPoint: 'ephemeral_keys',
      token: ApiKeys.secretKey,
      headers: {
        'Authorization': "Bearer ${ApiKeys.secretKey}",
        'Stripe-Version': "2023-10-16",
      },
    );
    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);

    return ephemeralKey;
  }
}
