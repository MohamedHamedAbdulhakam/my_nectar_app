import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/carouse_slider_details_view.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/expantion_tiles_section.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/name_of_product.dart';
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
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image
            CarousSliderDetailsViews(imagePaths: imagePaths),
            const SizedBox(
              height: 30,
            ),
            // Dots indicator placeholder
           const ThreePointsUnderCarouseSlider(),
            const SizedBox(
              height: 40,
            ),
            // Product Title and Price Row
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NameOfProduct(nameOfProduct: 'Natural Apple Red'),
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
             const   ExpantionTilesSection(),
           
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

  AppBar customAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
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
    );
  }
}

