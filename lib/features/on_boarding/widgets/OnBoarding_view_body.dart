import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';

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
            const Text(
              "Welcome",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none, // This removes the underline
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "to our store",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none, // This removes the underline
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),

            // Subheading Text
            const Text(
              "Get your groceries in as fast as one hour",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                decoration: TextDecoration.none, // This removes the underline
              ),
              textAlign: TextAlign.center,
            ),

            // Spacer for alignment

            const SizedBox(height: 40),
            // Get Started Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: ElevatedButton(
                onPressed: () {
                   GoRouter.of(context).push(AppRouter.keyloginview);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: KeyPrimaryColor,
                  iconColor: KeyPrimaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      decoration:
                          TextDecoration.none, // This removes the underline
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            // Bottom spacing
            const Spacer(flex: 1),
          ],
        ),
      ],
    );
  }
}
