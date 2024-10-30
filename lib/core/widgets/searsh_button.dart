import 'package:flutter/material.dart';

class SearshButton extends StatelessWidget {
  const SearshButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
           padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
           child: MaterialButton(
             onPressed: () {
               print("Search Store button pressed");
             },
             minWidth: double.infinity,
             color: Colors.grey[200], // Background color
             elevation: 0, // No shadow for a flat appearance
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(16.0), // Rounded corners
             ),
             padding: const EdgeInsets.symmetric(
                 horizontal: 16.0, vertical: 12.0), // Button padding
             child: const Row(
               mainAxisSize: MainAxisSize
                   .min, // To wrap the button size around content
               children: [
                 Icon(
                   Icons.search, // Search icon
                   color: Colors.black54,
                 ),
                 SizedBox(width: 10), // Spacing between icon and text
                 Text(
                   'Search Store',
                   style: TextStyle(
                     color: Colors.black54, // Text color
                     fontSize: 16.0,
                   ),
                 ),
               ],
             ),
           ),
         );
  }
}
