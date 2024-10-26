import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_list_view.dart';
import 'carosel_slider.dart';
import 'categoriesa_list_view.dart';
import 'searsh_bottom_for_home_view.dart';
import 'sliver_app_bar_for_home_view.dart';
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
          const SliverAppBarForHomeVeiw(),
        ];
      },
      body: Column(
        children: [
          const SearshBottomForHomeView(),
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
    );
  }
}
