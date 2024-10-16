import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../on_boarding/presentation/views/on_boarding_view.dart';

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
      Duration(seconds: 2),
      () {
        // Get.to(() => const HomeView(),
        //     transition: Transition.leftToRight, duration: KTranstionDuration);
        // ignore: use_build_context_synchronously
        Navigator.of(context).push(MaterialPageRoute(builder: (con) {
          return OnBoardingView();
        }));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: keyPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.splashScreenImage,
            width: 200,
            height: 50,
          )
        ],
      ),
    );
  }
}
