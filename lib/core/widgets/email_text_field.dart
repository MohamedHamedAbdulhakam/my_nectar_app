import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    required this.inputtype, required this.text,
  });
  final TextInputType inputtype;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text(text),
        TextField(
          decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: keyPrimaryColor))

              // border: OutlineInputBorder(),
              ),
          keyboardType: inputtype,
        ),
      ],
    );
  }
}
