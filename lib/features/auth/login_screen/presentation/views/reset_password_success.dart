import 'package:flutter/material.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/widgets/reset_passowrd_success_body.dart';

class ResetPasswordSuccessView extends StatelessWidget {
  const ResetPasswordSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:ResetPassowrdSuccessBody() ,
    );
  }
}
