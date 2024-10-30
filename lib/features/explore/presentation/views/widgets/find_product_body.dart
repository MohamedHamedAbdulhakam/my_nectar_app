import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_nectar_app/core/utils/app_router.dart';
import 'package:my_nectar_app/core/utils/assets.dart';
import 'package:my_nectar_app/features/explore/presentation/views/widgets/category_card.dart';
import 'package:my_nectar_app/core/widgets/searsh_button.dart';

class FindProductBody extends StatelessWidget {
  FindProductBody({super.key});

  final colors = [Colors.red[50], Colors.yellow[50], Colors.orange[50], Colors.purple[50], Colors.green[50]];

  @override
  Widget build(BuildContext context) {
    // Generate a list of 20 identical items (apple image)
    final categories = List.generate(
      20,
      (index) => {
        'title': 'Fresh Fruits \n && Vegetables', // Same title for each item
        'image': Assets.VegetablesImage, // Same image for each item
        'color': colors[index % colors.length], // Loop through colors
      },
    );

    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
         const  SliverAppBar(
            title:  Text('Find Products', style: TextStyle(color: Colors.black)),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme:  IconThemeData(color: Colors.black),
            floating: true,
            snap: true,
          ),
        ];
      },
      body: Column(
        children: [
          const SearshButton(),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 columns
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return GestureDetector(
                  onTap: (){
                     GoRouter.of(context).push(AppRouter.kProductView);
                  },
                  child: CategoryCard(
                    title: category['title'] as String,
                    image: category['image'] as String,
                    color: category['color'] as Color?,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
