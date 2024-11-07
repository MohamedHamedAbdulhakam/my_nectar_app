import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfileListTile({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(title),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        // Implement navigation or actions for each tile
      },
    );
  }
}
