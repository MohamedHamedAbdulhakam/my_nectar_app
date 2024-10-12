import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required this.labeltext,
  });
  final String labeltext;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

bool show = true;

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Password'),
        TextField(
          obscureText: show,
          decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
              borderSide:  BorderSide(color: keyPrimaryColor),
            ),

            // border: OutlineInputBorder(),
            suffixIcon: IconButton(
                onPressed: () {
                  show = !show;
                  setState(() {
                    
                  });
                },
                icon: show? const Icon(Icons.visibility):Icon(Icons.visibility_off)),
          ),
        ),
      ],
    );
  }
}
