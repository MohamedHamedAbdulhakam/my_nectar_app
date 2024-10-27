import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/carouse_slider_details_view.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/three_point_under_carouse_slider.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'increament_and_decreament_section_in_deatail_view.dart';

class ProductDetailViewBody extends StatelessWidget {
  ProductDetailViewBody({super.key});
  final List<String> imagePaths = [
    'assets/banana.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.drive_folder_upload, color: Colors.black),
        ),
        // leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.drive_folder_upload, color: Colors.black),
            onPressed: () {
              // Share button action
            },
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image
            CarousSliderDetailsViews(imagePaths: imagePaths),
            const SizedBox(
              height: 30,
            ),

            const ThreePointsUnderCarouseSlider(),
            const SizedBox(
              height: 40,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Naturel Red Apple',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '1kg, Price',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Icon(Icons.favorite_border, color: Colors.grey),
                ],
              ),
            ),
            // Quantity Selector and Price
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IncreamentAndDecreamentSectionInDetailsView(),
                  Text(
                    '\$4.99',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Product Details Section

            const ExpansionTile(
              title: Text('Product Detail'),
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    'Apples are nutritious. Apples may be good for weight loss. '
                    'Apples may be good for your heart. As part of a healthful '
                    'and varied diet.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            // Nutritions and Reviews Section
            const ExpansionTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nutritions', style: TextStyle(fontSize: 16)),
                  Text('100gr', style: TextStyle(color: Colors.grey)),
                ],
              ),
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    'Apples are nutritious. Apples may be good for weight loss. '
                    'Apples may be good for your heart. As part of a healthful '
                    'and varied diet.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              title: Row(
                children: [
                  Text('Review', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 180),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star_half, color: Colors.orange, size: 18),
                ],
              ),
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    'Apples are nutritious. Apples may be good for weight loss. '
                    'Apples may be good for your heart. As part of a healthful '
                    'and varied diet.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),

            // Add to Basket Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    text: 'Add To Basket',
                    onPressed: () {},
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
