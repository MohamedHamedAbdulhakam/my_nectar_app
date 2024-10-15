import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';

class StatusOfHavingAccountSection extends StatelessWidget {
  const StatusOfHavingAccountSection({
    super.key, required this.sectionOneText, required this.sectionTwoText,
  });
  final String sectionOneText;
  final String sectionTwoText;
  @override
  Widget build(BuildContext context) {
    return  Text.rich(
      TextSpan(
        text: sectionOneText,
        style: TextStyle(color: Colors.black),
        children: [
          
          TextSpan(
            text: sectionTwoText,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
              recognizer: TapGestureRecognizer()..onTap = () {
          // Define the action to take on click
          GoRouter.of(context).push(AppRouter.kSignUpView);
        },
          ),
        ],
      ),
    );
  }
}
