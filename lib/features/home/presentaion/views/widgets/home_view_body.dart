import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/core/utils/styles.dart';
import 'package:my_nectar_app/core/widgets/card_section.dart';
import 'package:my_nectar_app/core/widgets/custom_list_view.dart';
import 'package:my_nectar_app/core/widgets/logo_section.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/text_section_in_home_view.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  final List<String> imagePaths = [
    'assets/homeImage.jpg',
  ];
 

  @override
  Widget build(BuildContext context) {
    return
        // Remove the main AppBar here
        NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          const SliverAppBar(
            expandedHeight: 80, // Increase the height of the SliverAppBar
            floating: true,
            // true, // Keep it non-floating for a collapsing effect
            // Pin the SliverAppBar when scrolled to the top
            title: LogoSection(),
          ),

          // SliverToBoxAdapter(
          //   child: CustomScrollView(slivers: [
          //     Text('data'),
          //   ]),
          // )
        ];
      },
      body: Scaffold(
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
                    // side: BorderSide(color: Colors.blue), // Border
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
              SingleChildScrollView(
                child: CarouselSlider(
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
              ),
              TextSectionInHomeView(text: 'Exclusive Offer',),
              SizedBox(
                height: 270,
                child: CustomListView(),
              ),
              TextSectionInHomeView(text: 'Best Selling'),
              
              SizedBox(
                height: 270,
                child: CustomListView(),
              ),
             TextSectionInHomeView(text: 'Groceries'),
              CustomListView()
            ],
          ),
        ),
      ),
    );

    // body: ListView.builder(
    //   itemCount: 20,
    //   itemBuilder: (BuildContext context, int index) {
    //     return ListTile(
    //       title: Text("Item $index"),
    //     );
    //   },
    // ),
  }
}

