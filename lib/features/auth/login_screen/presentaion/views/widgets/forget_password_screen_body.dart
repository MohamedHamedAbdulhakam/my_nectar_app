import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:my_nectar_app/core/widgets/custom_button.dart';
import 'package:my_nectar_app/core/widgets/email_text_field.dart';
import 'package:my_nectar_app/core/widgets/password_text_field.dart';
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
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Mask Group.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      const Positioned(
          top: 30, left: 10, child: Icon(Icons.arrow_back_ios_new)),
      Positioned(
        top: 100,
        right: 200,
        child: Image.asset(
          'assets/Group.png',
          height: 55,
          width: 47,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 100),
              const Text('Forget Password ', style: Styles.textStyle26),
              const SizedBox(height: 5),
              const Text(
                  'Enter your email for verification process we will send 5 digits code to your email',
                  style: Styles.textStyle16),
              const SizedBox(height: 50),
              // Email Input
              const EmailTextField(
                inputtype: TextInputType.emailAddress,
              ),
              const SizedBox(height: 70),

              CustomButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Text('Reset Passowrd',
                                  style: Styles.textStyle26),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  'Enter the code that was sent to yout email address',
                                  style: Styles.textStyle16),
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
                                hideCharacter: true,
                                pinBoxRadius: 10,
                              ),
                              const SizedBox(height: 50),
                              CustomButton(
                                text: 'Send Code ',
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
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
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        );
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
    ]);
  }
}
