import 'package:flutter/material.dart';

class NameOfProduct extends StatelessWidget {
  const NameOfProduct({
    super.key, required this.nameOfProduct,
  });

  final String nameOfProduct;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Naturel Red Apple',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          '1kg, Price',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
