import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';

class CardSection extends StatefulWidget {
  const CardSection({
    super.key,
  });

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                  height: 120,
                  width: 100,
                  child: Image.asset(Assets.bananaImage)),
            ),
            Text(
              'Organic banana',
              style: Styles.textStyle16
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              '7pec,priceg',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$4.99',
                    style: Styles.textStyle16.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Container(
                  decoration: BoxDecoration(
                    color: keyPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: count==0?Icon(Icons.add):Text("$count",style: Styles.textStyle16.copyWith(color: Colors.white),),
                    color: Colors.white,
                    onPressed: () {
                      count++;
                      setState(() {});
                      print(count);
                    },
                  ),
                ),
              ],
            ),

            // Add to Cart Button
          ],
        ),
      ),
    );
  }
}
