import 'package:go_router/go_router.dart';
import 'package:payment_checkout/features/checkout/presentation/views/my_cart_view.dart';
import 'package:payment_checkout/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_checkout/features/checkout/presentation/views/receipt_view.dart';

abstract class AppRouter {
  static const String kMyCardView = '/';
  static const String kPaymentDetailsView = '/PaymentDetails';
  static const String kReceiptView = '/Receipt';

  static final routers = GoRouter(routes: [
    GoRoute(
      path: kMyCardView,
      builder: (context, state) => const MyCartView(),
    ),
    GoRoute(
      path: kPaymentDetailsView,
      builder: (context, state) => const PaymentDetailsView(),
    ),
    GoRoute(
      path: kReceiptView,
      builder: (context, state) => const ReceiptView(),
    ),
  ]);
}
