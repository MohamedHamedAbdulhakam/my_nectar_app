import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/expantion_tile_details_view.dart';

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
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 500 / 200,
                viewportFraction: 0.8,
              ),
              items: imagePaths.map((path) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(
                      path,
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 30,
            ),
            // Dots indicator placeholder
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 10, color: Colors.grey),
                SizedBox(width: 5),
                Icon(Icons.circle, size: 10, color: Colors.green),
                SizedBox(width: 5),
                Icon(Icons.circle, size: 10, color: Colors.grey),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            // Product Title and Price Row
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
            ExpantionTileDetailsView(
              title: 'Nutritions',
              description:
                  'Apples are nutritious. Apples may be good for weight loss. '
                  'Apples may be good for your heart. As part of a healthful '
                  'and varied diet.',
              widget: Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star_half, color: Colors.orange, size: 18),
                ],
              ),
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
