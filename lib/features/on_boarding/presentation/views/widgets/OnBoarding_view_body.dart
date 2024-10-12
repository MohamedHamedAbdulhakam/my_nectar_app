import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:my_nectar_app/core/widgets/custom_button.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.backgroundimage),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Top spacing
          const Spacer(),
       
          Image.asset(Assets.whitcolorcarot),
          const Text("  Welcome \n to our store",
              style: Styles.textStyle48, ),
         
          const SizedBox(height: 10),
          const Text("Get your groceries in as fast as one hour",
              style: Styles.textStyle16, ),
          const SizedBox(height: 40),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: CustomButton(
                text: 'Get started',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.keyloginview);
                },
              )),

          // Bottom spacing
          const SizedBox(height: 30,)
        ],
      ),
    );
  }
}
