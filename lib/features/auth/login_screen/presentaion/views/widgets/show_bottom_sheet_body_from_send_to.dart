import 'package:flutter/material.dart';
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Reset Passowrd',
                style: Styles.textStyle26),
            const SizedBox(
              height: 20,
            ),
            const Text(
                'Enter new password to your email to reset your passowrd',
                style: Styles.textStyle16),
            const SizedBox(
              height: 20,
            ),
            const EmailTextField(
              inputtype:
                  TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            const PasswordTextField(
              labeltext: 'Passowrd',
            ),
            const SizedBox(height: 20),
            const PasswordTextField(
                labeltext: 'Confirm Passowrd'),
            const SizedBox(height: 50),
            CustomButton(
              text: 'Reset Passowrd ',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
// 