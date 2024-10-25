import 'package:flutter/material.dart';

class IncreamentAndDecreamentSectionInDetailsView extends StatefulWidget {
  const IncreamentAndDecreamentSectionInDetailsView({
    super.key,
  });

  @override
  State<IncreamentAndDecreamentSectionInDetailsView> createState() => _IncreamentAndDecreamentSectionInDetailsViewState();
}

class _IncreamentAndDecreamentSectionInDetailsViewState extends State<IncreamentAndDecreamentSectionInDetailsView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Decrease quantity button
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
          if(count>0){
              count--;

          }
            
            setState(() {
              
            });
            
          },
          color: Colors.black,
        ),
        Text(count.toString(), style: const TextStyle(fontSize: 18)),
        // Increase quantity button
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {

              count++;
           
            setState(() {
              
            });
          },
          color: Colors.black,
        ),
      ],
    );
  }
}
