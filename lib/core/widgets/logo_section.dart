import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/utils/assets.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({
    super.key,  required this .height,
  });
  final int height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height.toDouble(),
        ),
        Align(
            alignment: Alignment.center, child: Image.asset(Assets.carotImage)),
      ],
    );
  }
}
