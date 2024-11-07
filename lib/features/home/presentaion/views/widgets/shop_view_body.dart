import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/widgets/custom_list_view.dart';
import 'package:my_nectar_app/core/widgets/searsh_button.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/carous_slider_home_view.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/categoriesa_list_view.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/sliver_app_bar_for_home_view.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/text_section_in_home_view.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          const SliverAppBarForHomeVeiw(),
        ];
      },
      body: const Column(
        children: [
          SearshButton(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CaroselSlider(imagePaths: ['assets/homeImage.jpg']),
                   TextSectionInHomeView(text: 'Exclusive Offer'),
                 SizedBox(
                    height: 270,
                    child: CustomListView(),
                  ),
                  TextSectionInHomeView(text: 'Best Selling'),
                   SizedBox(
                    height: 270,
                    child: CustomListView(),
                  ),
                  const TextSectionInHomeView(text: 'Groceries'),
                  const CategoriesListView(),
                   SizedBox(
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
