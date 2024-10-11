import 'package:go_router/go_router.dart';
import 'package:payment_app/features/checkout/presentation/views/my_cart_view.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details.dart';

abstract class AppRouter {

  static const kPaymentView = '/PaymentDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyCartView(),
      ),
      GoRoute(
        path: kPaymentView,
        builder: (context, state) => const PaymentDetailsView(),
      ),
    ],
  );
}
