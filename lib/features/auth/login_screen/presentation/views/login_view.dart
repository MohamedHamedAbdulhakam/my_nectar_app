import 'package:flutter/material.dart';
import 'package:my_nectar_app/features/auth/login_screen/presentation/views/widgets/login_screen_view_body.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body:  LoginScreenViewBody());
  }
}
