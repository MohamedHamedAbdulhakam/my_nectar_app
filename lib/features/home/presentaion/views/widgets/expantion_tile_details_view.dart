import 'package:flutter/material.dart';

class ExpantionTileDetailsView extends StatelessWidget {
  ExpantionTileDetailsView({
    super.key, required this.title, required this.description,  this.SubTitle,
   required this . rating,
  });
  final String title;
  final String description;
  final String ?SubTitle;
  bool rating = false;
  bool extraText = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 16)),
          SizedBox(width: 180),
          if (extraText&&SubTitle!=null) Text(SubTitle!, style: TextStyle(color: Colors.grey)),
          if (rating)
            const Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 18),
                Icon(Icons.star, color: Colors.orange, size: 18),
                Icon(Icons.star, color: Colors.orange, size: 18),
                Icon(Icons.star, color: Colors.orange, size: 18),
                Icon(Icons.star_half, color: Colors.orange, size: 18),
              ],
            ),
        ],
      ),
      children: [
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            description,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
