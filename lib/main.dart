import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_nectar_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const NectarApp());
}

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}
