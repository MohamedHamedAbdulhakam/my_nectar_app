import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/forget_passowrd_view.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/login_view.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/reset_password_success.dart';
import 'package:my_nectar_app/features/auth/sign_up/presentation/views/sign_up_view.dart';
import 'package:my_nectar_app/features/explore/presentation/views/find_product_view.dart';
import 'package:my_nectar_app/features/explore/presentation/views/products_view.dart';
import 'package:my_nectar_app/features/home/presentaion/views/product_details_view.dart';
import 'package:my_nectar_app/features/home/presentaion/views/home_view.dart';
import 'package:my_nectar_app/features/my_cart/presentaion/cart_view.dart';
import 'package:my_nectar_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:my_nectar_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kOnBoardingView = '/onBoarding';
  static const kLoginView = '/loginView';
  static const kForgetPassword = '/forgetPassword';
  static const kSendCode= '/sendCode';
  static const kResetPasswordSuccess= '/resetPasswordSuccess';
  static const kSignUpView= '/signUpView';
  static const kHomeView= '/homeView';
  static const kDetailsView= '/detailsView';
  static const kExplorView= '/explorView';
   static const kProductView= '/productView';
   static const kCarttView= '/cartView';
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
      GoRoute(
          path: kHomeView,
          builder: (context, state) => const HomeView(),
          
        ),
      GoRoute(
          path: kDetailsView,
          builder: (context, state) => const ProductDetailsView(),
          
        ),
      GoRoute(
          path: kExplorView,
          builder: (context, state) => const FindProductView(),
          
        ),
         GoRoute(
          path: kProductView,
          builder: (context, state) => const ProductsView(),
          
        ),
         GoRoute(
          path: kCarttView,
          builder: (context, state) => const CartView(),
          
        ),
    ],
  );
}
