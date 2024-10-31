import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';

class CustomCheckboxListTile extends StatefulWidget {
  final String title;
 
  const CustomCheckboxListTile({
    Key? key,
    required this.title,
  }) : super(key: key);
 
  @override
  State<CustomCheckboxListTile> createState() => _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: keyPrimaryColor,
      value: isChecked,
      onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });},
      title: Text(
        widget.title,
        style: TextStyle(
          color: isChecked ? keyPrimaryColor : Colors.black,
        ),
      ),
    );
  }
}
