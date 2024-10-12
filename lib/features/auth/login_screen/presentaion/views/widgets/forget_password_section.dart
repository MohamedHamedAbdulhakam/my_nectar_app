import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';

class ForgetPasswordSection extends StatelessWidget {
  const ForgetPasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      
        child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.keyforgetpassword);
            },
            child: const Text('Forgot Password?')),
     
    );
  }
}