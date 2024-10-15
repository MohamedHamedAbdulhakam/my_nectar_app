import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';
import 'package:my_nectar_app/core/widgets/text_section.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/widgets/dont_have_account.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/widgets/forget_password_section.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/email_text_field.dart';
import '../../../../../../core/widgets/password_text_field.dart';

class LoginScreenViewBody extends StatelessWidget {
  const LoginScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.whiteBackgroundImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 80),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(Assets.carotImage)),
              const SizedBox(height: 80),
              TextSection(
                textOne: 'Loging',
                textTwo: 'Enter Your Email and Password',
              ),
              const SizedBox(height: 30),
              const EmailTextField(
                text: 'Email',
                inputtype: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              const PasswordTextField(text: 'Password'),
              const SizedBox(height: 10),
              const ForgetPasswordSection(),
              const SizedBox(height: 30),
              CustomButton(text: 'Login In', onPressed: () {}),
              const SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSignUpView);
                  },
                  child: const DontHaveAccontSection(
                    sectionOneText: 'Dont have an account?',
                    sectionTwoText: 'Sign Up ',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
