import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:my_nectar_app/core/widgets/custom_button.dart';
import 'package:my_nectar_app/core/widgets/email_text_field.dart';
import 'package:my_nectar_app/core/widgets/password_text_field.dart';

class ShowBottomSheetBodyFromSendTo extends StatelessWidget {
  const ShowBottomSheetBodyFromSendTo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Reset Passowrd', style: Styles.textStyle26),
          const SizedBox(
            height: 20,
          ),
          Text('Enter new password to your email to reset your passowrd',
              style: Styles.textStyle16.copyWith(color: kGreyColor)),
          const SizedBox(
            height: 20,
          ),
          const EmailTextField(
            text: 'Email',
            inputtype: TextInputType.emailAddress,
          ),
          const SizedBox(height: 20),
          const PasswordTextField(
            text: 'Passowrd',
          ),
          const SizedBox(height: 20),
          const PasswordTextField(text: 'Confirm Passowrd'),
          const SizedBox(height: 50),
          CustomButton(
            text: 'Reset Passowrd ',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kResetPasswordSuccess);
            },
          ),
        ],
      ),
    );
  }
}
// 