import 'package:flutter/material.dart';

class StatusOfHavingAccountSection extends StatelessWidget {
  const StatusOfHavingAccountSection({
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
