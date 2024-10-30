import 'package:flutter/material.dart';
import 'package:my_nectar_app/features/explore/presentation/views/widgets/filter_action.dart';

import '../../../../../core/widgets/card_section.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetables && Fruits',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_1_rounded),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return FilterScreen();
                },
              );
              // Handle login action
            },
          ),
        ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
                height: 270,
                width: 200,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CardSection(),
                ));
          }),
    );
  }
  
}
