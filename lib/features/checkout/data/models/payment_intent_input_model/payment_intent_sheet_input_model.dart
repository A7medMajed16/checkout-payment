class PaymentIntentSheetInputModel {
  final String clientSecret;
  final String customerId;
  final String ephemeralKeySecret;

  PaymentIntentSheetInputModel(
      {required this.clientSecret,
      required this.customerId,
      required this.ephemeralKeySecret});
}
