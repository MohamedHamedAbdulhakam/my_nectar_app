import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key, required this.labeltext,
  });
  final String labeltext;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: 'Enter your password',
        // border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.visibility_off),
      ),
    );
  }
}
