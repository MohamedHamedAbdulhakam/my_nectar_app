
import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/utils/assets.dart';

class IdentitySection extends StatelessWidget {
  const IdentitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(Assets.myAccountPage), // Replace with your image asset path
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mohamed Hamed',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
           Row(
              children: [
                Text(
                  'mohamedhamed976134@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

