import 'package:flutter/material.dart';

import 'filter_action.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vegetables && Fruits',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
                isScrollControlled: true, // Allow the bottom sheet to expand fully
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                builder: (BuildContext context) {
                  return DraggableScrollableSheet(
                    expand: false, // Allow expanding by dragging
                    initialChildSize: 0.5, // Start with half screen height
                    minChildSize: 0.3, // Minimum height
                    maxChildSize: 0.9, // Maximum height
                    builder: (context, scrollController) {
                      return SingleChildScrollView(
                        controller: scrollController,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: FilterAction(), // Your custom widget
                        ),
                      );
                    },
                  );
                },
              );
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
              // child: CardSection(),
            ),
          );
        },
      ),
    );
  }
}