import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:my_nectar_app/core/widgets/custom_button.dart';

class FavouriteViewBody extends StatelessWidget {
  final List<Map<String, String>> favouriteItems = [
    {
      'name': 'Pepper',
      'size': '1K, Price',
      'price': '\$1.50',
      'image': Assets.PepperImage, // Replace with your image asset path
    },
    {
      'name': 'Vegetables',
      'size': '5K, Price',
      'price': '\$1.99',
      'image': Assets.VegetablesImage,
    },
    {
      'name': 'Red Apple',
      'size': '3K, Price',
      'price': '\$15.50',
      'image': Assets.appleImage,
    },
    {
      'name': 'Banana',
      'size': '1K, Price',
      'price': '\$4.99',
      'image': Assets.bananaImage,
    },
    {
      'name': 'Carot',
      'size': '.5K, Price',
      'price': '\$4.99',
      'image': Assets.carotImage,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite',style: Styles.textStyle26,),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: favouriteItems.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    favouriteItems[index]['image']!,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(favouriteItems[index]['name']!),
                  subtitle: Text(favouriteItems[index]['size']!),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(favouriteItems[index]['price']!),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(text: 'Add All To Cart',onPressed: () {
              
            },),
          ),
        ],
      ),
     
    );
  }
}