import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/features/login_screen/presentaion/views/forget_passowrd_view.dart';
import 'package:my_nectar_app/features/login_screen/presentaion/views/login_screen_view.dart';
import 'package:my_nectar_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:my_nectar_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const keyonboardingview = '/onBoarding';
  static const keyloginview = '/loginView';
  static const keyforgetpassword = '/forgetPassword';
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
      GoRoute(
        path: keyloginview,
        builder: (context, state) => const LoginScreenView(),
        
      ),
      GoRoute(
          path: keyforgetpassword,
          builder: (context, state) => const ForgetPassowrdView(),
        ),
    ],
  );
}
