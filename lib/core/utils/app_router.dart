import 'package:go_router/go_router.dart';
import 'package:payment_app/features/checkout/presentation/views/my_cart_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
      routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyCartView(),
    )
  ]);
}
