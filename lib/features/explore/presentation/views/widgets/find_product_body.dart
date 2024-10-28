import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/utils/assets.dart';

class FindProductBody extends StatelessWidget {
  const FindProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Generate a list of 20 identical items (apple image)
    final categories = List.generate(
      20,
      (index) => {
        'title': 'Fresh Fruits \n && Vegetables', // Same title for each item
        'image': Assets.VegetablesImage, // Same image for each item
        'color': Colors.green[50], // Same background color for each item
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Products', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Store',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
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
                  return CategoryCard(
                    title: category['title'] as String,
                    image: category['image'] as String,
                    color: category['color'] as Color?,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final Color? color;

  const CategoryCard({required this.title, required this.image, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 60),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}