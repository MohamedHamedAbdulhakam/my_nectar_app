import 'package:flutter/material.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/expantion_tile_details_view.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/name_of_product.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'carouse_slider_details_view.dart';
import 'increament_and_decreament_section_in_deatail_view.dart';
import 'three_point_under_carouse_slider.dart';

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
                  NameOfProduct(
                    nameOfProduct: 'Natural Red Apple',
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

            //  ExpantionTileDetailsView(
            //   title: 'Product Detail',
            //   explantion:
            //       'Apples are nutritious. Apples may be good for weight loss. '
            //       'Apples may be good for your heart. As part of a healthful '
            //       'and varied diet.',
            // ),
        ExpantionTileDetailsView(
          rating: false,
          title: "dfdfdf" ,
          description: 'dfdsfsdf sdfhdsfjhfsjdfh  sdfhjdsf ds fhdsjfh sdfdsjfh dsjfh asdf sdhfj asdkfh ih asuidf',

        ),
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
            ExpantionTileDetailsView(
              title: 'dkfjdklfjdl',
              description: 'lkdjfkldsfj fkldsfjklds djfkdsj fkldsjfksd',
              rating: true,
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
