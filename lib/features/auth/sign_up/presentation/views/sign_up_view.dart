import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_nectar_app/features/auth/sign_up/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: SignUpViewBody(),
    );
  }
}