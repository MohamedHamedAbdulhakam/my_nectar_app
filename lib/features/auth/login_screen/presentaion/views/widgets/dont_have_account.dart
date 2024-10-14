import 'package:flutter/material.dart';

class DontHaveAccontSection extends StatelessWidget {
  const DontHaveAccontSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "Don’t have an account? ",
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: "Sign Up",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}