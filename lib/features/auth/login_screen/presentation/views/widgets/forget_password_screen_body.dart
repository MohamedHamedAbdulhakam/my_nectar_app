import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:my_nectar_app/core/widgets/custom_button.dart';
import 'package:my_nectar_app/core/widgets/email_text_field.dart';
import 'package:my_nectar_app/core/widgets/logo_section.dart';
import 'package:my_nectar_app/core/widgets/text_section.dart';

import 'package:my_nectar_app/features/auth/login_screen/presentation/views/widgets/show_bottom_sheet_body_from_continue.dart';

class ForgetPasswordScreenBody extends StatefulWidget {
  const ForgetPasswordScreenBody({super.key});

  @override
  State<ForgetPasswordScreenBody> createState() =>
      _ForgetPasswordScreenBodyState();
}

class _ForgetPasswordScreenBodyState extends State<ForgetPasswordScreenBody> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.whiteBackgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const LogoSection(),
              const SizedBox(height: 80),

              const TextSection(textOne: 'Forget Password', textTwo: 'Enter your email for verification process we will send 5 digit code to your email'),
              const SizedBox(height: 30),
              // Email Input
              const EmailTextField(
                text: 'Email',
                inputtype: TextInputType.emailAddress,
              ),
              const SizedBox(height: 50),

              CustomButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return ShowBottomSheetBodyFromContinue(
                            controller: controller);
                      },
                    );
                    // Handle login action
                  },
                  text: 'Countinue'),

              // Signup Link
            ],
          ),
        ),
      ),
    );
  }
}
