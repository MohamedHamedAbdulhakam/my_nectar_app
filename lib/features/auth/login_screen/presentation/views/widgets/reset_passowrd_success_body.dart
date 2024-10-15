import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';

class ResetPassowrdSuccessBody extends StatelessWidget {
  const ResetPassowrdSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Column(
        children: [
          const SizedBox(height: 90),
          Container(
            width: 240,
            height: 218,
            child: Image.asset(Assets.actionDoneImage),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Congratulation",
            style: Styles.textStyle26,
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                'Your change Password is Success \n            Welcome to our app',
                style: Styles.textStyle16.copyWith(color: kGreyColor),
              ))
        ],
      ),
    );
  }
}
