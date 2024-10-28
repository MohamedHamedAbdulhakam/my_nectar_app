import 'package:flutter/material.dart';

class ExpantionTileDetailsView extends StatelessWidget {
  const ExpantionTileDetailsView({
    super.key,
    required this.title,
    required this.description, this.widget,
  });
  final String title;
  final String description;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return   ExpansionTile(
      title: Expanded(
        child: Row(
          children: [
            Text(title, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
            SizedBox(width: 150),
           widget??Text('') ,
          ],
        ),
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
