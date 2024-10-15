import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/utils/assets.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        Align(
            alignment: Alignment.center, child: Image.asset(Assets.carotImage)),
      ],
    );
  }
}
