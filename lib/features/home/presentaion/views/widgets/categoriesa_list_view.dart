import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 150,
    // width:400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 10, // Number of items in the list
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.orange[100],
                ),
                height: 100,
                width: 350,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 70,
                        width: 70,
                        child: Image.asset(Assets.palsesImage,
                            height: 40, width: 40)),
                    SizedBox(width: 30),
                    Text('Pulses',
                        style: Styles.textStyle16.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
