import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/widgets/card_section.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 270,
          width: 200,
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8),
            child: CardSection(),
          ),
        );
      },
    );
  }
}
