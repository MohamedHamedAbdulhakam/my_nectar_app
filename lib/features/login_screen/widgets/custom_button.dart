import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle login action
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: KeyPrimaryColor,
        padding: const EdgeInsets.symmetric(vertical: 15),
        minimumSize: const Size(double.infinity, 65),
      ),
      child:  Text(text,
          style: const TextStyle(fontSize: 18, color: Colors.white)),
    );
  }
}
