import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';

import '../../../../../core/widgets/custom_list_view.dart';
import 'carous_slider_home_view.dart';
import 'categoriesa_list_view.dart';
import '../../../../../core/widgets/searsh_button.dart';
import 'sliver_app_bar_for_home_view.dart';
import 'text_section_in_home_view.dart';

class HomeViewBody extends StatefulWidget {
  HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final List<String> imagePaths = [
    'assets/homeImage.jpg',
  ];

  int currentIndex = 0; // Holds the current index for BottomNavigationBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: keyPrimaryColor, // Color for selected item
        unselectedItemColor: Colors.black,   // Color for unselected items

        currentIndex: currentIndex, // Set the currently selected index
        onTap: (val) {
          setState(() {
            currentIndex = val; // Update selected index when an item is tapped
          });
        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_business), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "Account"),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBarForHomeVeiw(),
          ];
        },
        body: Column(
          children: [
            const SearshButton(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CaroselSlider(imagePaths: imagePaths),
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
                    const CategoriesListView(),
                    const SizedBox(
                      height: 270,
                      child: CustomListView(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}