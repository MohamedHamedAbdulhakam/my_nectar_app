import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';

import '../../../../../core/widgets/custom_list_view.dart';
import '../../../../../core/widgets/logo_section.dart';
import 'text_section_in_home_view.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  final List<String> imagePaths = [
    'assets/homeImage.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          const SliverAppBar(
            expandedHeight: 80, // Increase the height of the SliverAppBar
            floating: true,
            title: LogoSection(),
          ),
        ];
      },
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
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
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 386 / 114,
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
            const TextSectionInHomeView(text: 'Exclusive Offer'),
            const SizedBox(
              height: 270,
              child: CustomListView(),
            ),
            const TextSectionInHomeView(text: 'Best Selling'),
            const SizedBox(
              height: 270,
              child: CustomListView(),
            ),
            const TextSectionInHomeView(text: 'Groceries'),
            Container(height: 150,
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
            ),
            const SizedBox(
              height: 270,
              child: CustomListView(),
            ),
          ],
        ),
      ),
    );
  }
}
