import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/forget_passowrd_view.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/login_view.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/reset_password_success.dart';
import 'package:my_nectar_app/features/auth/sign_up/presentation/views/sign_up_view.dart';
import 'package:my_nectar_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:my_nectar_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kOnBoardingView = '/onBoarding';
  static const kLoginView = '/loginView';
  static const kForgetPassword = '/forgetPassword';
  static const kSendCode= '/sendCode';
  static const kResetPasswordSuccess= '/resetPasswordSuccess';
  static const kSignUpView= '/signUpView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginScreenView(),
        
      ),
        
      GoRoute(
          path: kForgetPassword,
          builder: (context, state) => const ForgetPassowrdView(),
          
        ),
      GoRoute(
          path: kResetPasswordSuccess,
          builder: (context, state) => const ResetPasswordSuccessView(),
          
        ),
      GoRoute(
          path: kSignUpView,
          builder: (context, state) => const SignUpView(),
          
        ),
    ],
  );
}
