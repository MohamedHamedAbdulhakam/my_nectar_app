import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/constants.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/email_text_field.dart';
import '../../../../../../core/widgets/password_text_field.dart';

class LoginScreenViewBody extends StatelessWidget {
  const LoginScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.whitebackgroundimage),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           const SizedBox(height: 85),
            Align(
              alignment: Alignment.center,
              child: Image.asset(Assets.carotimage)),
             const SizedBox(height: 80),
            const Text('Loging ', style: Styles.textStyle26),
            const SizedBox(height: 5),
          Text('Enter your email and passowrd',
                style: Styles.textStyle16.copyWith(color: kGreyColor)),
            const SizedBox(height: 30),
            const EmailTextField(
              inputtype: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            const PasswordTextField(labeltext: 'Password'),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Handle forgot password action
                },
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.keyforgetpassword);
                    },
                    child: const Text('Forgot Password?')),
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(text: 'Login In', onPressed: () {}),
            const SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  // Handle signup action
                },
                child: const Text.rich(
                  TextSpan(
                    text: "Don’t have an account? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
