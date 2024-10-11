import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        // border: OutlineInputBorder(),
      ),
      keyboardType:
          TextInputType.emailAddress,
    );
  }
}
