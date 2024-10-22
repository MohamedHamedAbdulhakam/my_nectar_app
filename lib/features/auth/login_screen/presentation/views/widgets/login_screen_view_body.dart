import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/email_text_field.dart';
import '../../../../../../core/widgets/logo_section.dart';
import '../../../../../../core/widgets/password_text_field.dart';
import '../../../../../../core/widgets/status_of_having_account_section.dart';
import '../../../../../../core/widgets/text_section.dart';
import 'forget_password_section.dart';

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
              const LogoSection(),
              const SizedBox(height: 80),
             const  TextSection(
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
                child: const StatusOfHavingAccountSection(
                  sectionOneText: 'Dont have an account?',
                  sectionTwoText: 'Sign Up ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

