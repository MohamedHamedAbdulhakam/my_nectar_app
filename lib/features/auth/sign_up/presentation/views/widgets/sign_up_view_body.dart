import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/widgets/logo_section.dart';
import 'package:my_nectar_app/core/widgets/text_section.dart';
import 'package:my_nectar_app/core/widgets/status_of_having_account_section.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/email_text_field.dart';
import '../../../../../../core/widgets/password_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

 

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
             const LogoSection(height: 80,),
              const SizedBox(height: 80),
              const TextSection(textOne: 'Sign Up', textTwo: 'Enter your credentials to continue'),
              const SizedBox(height: 30),
              const EmailTextField(
                text: 'Username',
                inputtype: TextInputType.name,
              ),
              const SizedBox(height: 20),
              const EmailTextField(
                text: 'Email',
                inputtype: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              const PasswordTextField(text: 'Password'),
              const SizedBox(height: 10),
              Text(
                'By countiueing you agree to our Terms of service and privacy policy ',
                style: Styles.textStyle16
                    .copyWith(color: kGreyColor, fontSize: 14),
              ),
              const SizedBox(height: 30),
              CustomButton(text: 'Sign Up', onPressed: () {}),
              const SizedBox(height: 20),
              Center(
                child: const StatusOfHavingAccountSection(
                  sectionOneText: 'Already have an account ',
                  sectionTwoText: 'Sign in ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
