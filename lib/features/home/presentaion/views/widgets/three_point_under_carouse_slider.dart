import 'package:flutter/material.dart';

class ThreePointsUnderCarouseSlider extends StatelessWidget {
  const ThreePointsUnderCarouseSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.circle, size: 10, color: Colors.grey),
        SizedBox(width: 5),
        Icon(Icons.circle, size: 10, color: Colors.green),
        SizedBox(width: 5),
        Icon(Icons.circle, size: 10, color: Colors.grey),
      ],
    );
  }
}