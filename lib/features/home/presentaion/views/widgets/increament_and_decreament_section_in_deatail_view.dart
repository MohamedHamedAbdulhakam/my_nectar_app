import 'package:flutter/material.dart';

class IncreamentAndDecreamentSectionInDetailsView extends StatelessWidget {
  const IncreamentAndDecreamentSectionInDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Decrease quantity button
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
        
          },
          color: Colors.black,
        ),
        Text('1', style: TextStyle(fontSize: 18)),
        // Increase quantity button
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
          color: Colors.black,
        ),
      ],
    );
  }
}
