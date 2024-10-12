import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required this.labeltext,
  });
  final String labeltext;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

bool show = false;

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('PassWord'),
        TextField(
         
          obscureText: true,
          decoration: InputDecoration(
            labelText: widget.labeltext,
            hintText: 'Enter your password',
            // border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.visibility_off),
          ),
        ),
      ],
    );
  }
}
