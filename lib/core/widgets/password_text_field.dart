import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required this.text,
  });
  final String text;

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
         Text(widget.text),//in statful widget we use widget.
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
                icon: show? const Icon(Icons.visibility):const Icon(Icons.visibility_off)),
          ),
        ),
      ],
    );
  }
}
