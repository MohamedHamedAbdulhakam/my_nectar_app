import 'package:flutter/material.dart';

class DontHaveAccontSection extends StatelessWidget {
  const DontHaveAccontSection({
    super.key, required this.sectionOneText, required this.sectionTwoText,
  });
  final String sectionOneText;
  final String sectionTwoText;
  @override
  Widget build(BuildContext context) {
    return  Text.rich(
      TextSpan(
        text: sectionOneText,
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: sectionTwoText,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
