import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/styles.dart';

class TextSectionInHomeView extends StatelessWidget {
  const TextSectionInHomeView({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.textStyle26,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'see all',
              style: Styles.textStyle16.copyWith(color: keyPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
