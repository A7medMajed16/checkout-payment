import 'package:go_router/go_router.dart';
import 'package:payment_checkout/features/checkout/presentation/views/my_card_view.dart';

abstract class AppRouter {
  static const String kMyCardView = '/';

  static final routers = GoRouter(routes: [
    GoRoute(
      path: kMyCardView,
      builder: (context, state) => const MyCardView(),
    )
  ]);
}
