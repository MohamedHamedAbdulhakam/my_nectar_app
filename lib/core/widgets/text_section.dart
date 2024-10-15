
import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/styles.dart';

class TextSection extends StatelessWidget {
  const TextSection({
    super.key, required this.textOne, required this.textTwo,
  });
  final String textOne;
  final String textTwo;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(textOne, style: Styles.textStyle26),
        const SizedBox(height: 5),
        Text(textTwo,
            style: Styles.textStyle16.copyWith(color: kGreyColor)),
      ],
    );
  }
}