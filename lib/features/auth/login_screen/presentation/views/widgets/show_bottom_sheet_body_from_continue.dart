import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:my_nectar_app/core/widgets/custom_button.dart';
import 'package:my_nectar_app/core/widgets/text_section.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/widgets/show_bottom_sheet_body_from_send_to.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class ShowBottomSheetBodyFromContinue extends StatelessWidget {
  const ShowBottomSheetBodyFromContinue({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextSection(textOne: 'Reset Password', textTwo: 'Enter the code that sent to your email /n address'),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Enter the five digit code ',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(.5)),
          ),
          const SizedBox(
            height: 50,
          ),
          PinCodeTextField(
            controller: controller,
            maxLength: 6,
            pinBoxWidth: 50,
            pinBoxHeight: 50,
            pinBoxColor: keyPrimaryColor,
            highlightColor: keyPrimaryColor,
            defaultBorderColor: keyPrimaryColor,
            hasTextBorderColor: keyPrimaryColor,
          
            pinBoxRadius: 10,
          ),
          const SizedBox(height: 50),
          CustomButton(
            text: 'Send Code ',
            onPressed: () {
              Navigator.pop(context);
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return const ShowBottomSheetBodyFromSendTo();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
