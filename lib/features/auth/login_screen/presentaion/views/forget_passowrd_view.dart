import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentaion/views/widgets/forget_password_screen_body.dart';

class ForgetPassowrdView extends StatelessWidget {
  const ForgetPassowrdView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgetPasswordScreenBody(),
    );
  }
}