import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(() => const HomeView(),
        //     transition: Transition.leftToRight, duration: KTranstionDuration);
        GoRouter.of(context).push(AppRouter.keyonboardingview);
      },
    );
  }

  Widget build(BuildContext context) {
    return Container(
      color: KeyPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/Group 1.png',
            width: 200,
            height: 50,
          )
        ],
      ),
    );
  }
}
