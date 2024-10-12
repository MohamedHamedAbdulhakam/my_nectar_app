import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key, required this.inputtype,
  });
  final TextInputType inputtype;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Text('Email'),
        TextField(
          decoration: const InputDecoration(
            hintText: 'Enter your email',
            // border: OutlineInputBorder(),
          ),
          keyboardType: inputtype,
        ),
      ],
    );
  }
}
