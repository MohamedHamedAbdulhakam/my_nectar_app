import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:my_nectar_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const keyonboardingview = '/onBoarding';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: keyonboardingview,
        builder: (context, state) => const OnBoardingView(),
      ),
    ],
  );
}
