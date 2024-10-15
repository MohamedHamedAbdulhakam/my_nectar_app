import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentaion/views/widgets/dont_have_account.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentaion/views/widgets/forget_password_section.dart';
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
          image: AssetImage(Assets.whiteBackgroundImage),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           SizedBox(height: MediaQuery.of(context).size.height/13,),
            Align(
              alignment: Alignment.center,
              child: Image.asset(Assets.carotImage)),
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
            const PasswordTextField(text: 'Password'),
            const SizedBox(height: 10),
            const ForgetPasswordSection(),
            const SizedBox(height: 30),
            CustomButton(text: 'Login In', onPressed: () {}),
            const SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  // Handle signup action
                },
                child: const DontHaveAccontSection(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



