import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KeyPrimaryColor,
      
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Image.asset('assets/Group 1.png',width: 200,height: 50,)
       ],
      ),
    );
  }
}