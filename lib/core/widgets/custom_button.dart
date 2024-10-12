import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text , this.onPressed});


  final String text;
  final  Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: keyPrimaryColor,
        padding: const EdgeInsets.symmetric(vertical: 15),
        minimumSize: const Size(double.infinity, 65),
      ),
      child:  Text(text,
          style: const TextStyle(fontSize: 18, color: Colors.white)),
    );
  }
}
