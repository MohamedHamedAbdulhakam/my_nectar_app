import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:my_nectar_app/core/widgets/custom_button.dart';
import 'package:my_nectar_app/core/widgets/email_text_field.dart';
import 'package:my_nectar_app/core/widgets/password_text_field.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentaion/views/widgets/show_bottom_sheet_body_from_continue.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentaion/views/widgets/show_bottom_sheet_body_from_send_to.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.whiteBackgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 13,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(Assets.carotImage)),
              const SizedBox(height: 80),

              const Text('Forget Password ', style: Styles.textStyle26),
              const SizedBox(height: 5),
              Text(
                  'Enter your email for verification process we will send 5 digits code to your email',
                  style: Styles.textStyle16.copyWith(color: kGreyColor)),
              const SizedBox(height: 30),
              // Email Input
              const EmailTextField(
                inputtype: TextInputType.emailAddress,
              ),
              const SizedBox(height: 50),

              CustomButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return ShowBottomSheetBodyFromContinue(controller: controller);
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


