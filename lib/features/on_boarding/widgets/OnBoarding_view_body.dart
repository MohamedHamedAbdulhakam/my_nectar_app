import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';
import 'package:my_nectar_app/core/utils/functions/styles.dart';
import 'package:my_nectar_app/core/widgets/custom_button.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // width:100,
          // height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/8140.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Overlay (semi-transparent black with Text)
        Container(
          color: Colors.black.withOpacity(0.3), // Dark overlay
        ),
        // Text and Button (Overlay)
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top spacing
            const Spacer(flex: 8),
            Container(
              // width:100,
              // height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/8140.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Welcome Text
            const Text("Welcome",
                style: Styles.textStyle48, textAlign: TextAlign.center),
            const Text('to our store',
                style: Styles.textStyle48, textAlign: TextAlign.center),
            const SizedBox(height: 10),
            const Text("Get your groceries in as fast as one hour",
                style: Styles.textStyle16, textAlign: TextAlign.center),
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
            const Spacer(flex: 1),
          ],
        ),
      ],
    );
  }
}
