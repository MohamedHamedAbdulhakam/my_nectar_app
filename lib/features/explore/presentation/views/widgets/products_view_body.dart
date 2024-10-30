import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/widgets/card_section.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Beverages',
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
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
            }));
  }
}

// class BeverageCard extends StatelessWidget {
//   final String imagePath;
//   final String name;
//   final String size;
//   final String price;

//   const BeverageCard({
//     super.key,
//     required this.imagePath,
//     required this.name,
//     required this.size,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//         side: BorderSide(color: Colors.grey[300]!),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Image.asset(
//               imagePath,
//               height: 80,
//               fit: BoxFit.contain,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               name,
//               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//               textAlign: TextAlign.center,
//             ),
//             Text(
//               '$size, Price',
//               style: TextStyle(color: Colors.grey[600], fontSize: 12),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               '\$$price',
//               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//               textAlign: TextAlign.center,
//             ),
//             const Spacer(),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: SizedBox(
//                 width: 32,
//                 height: 32,
//                 child: FloatingActionButton(
//                   backgroundColor: Colors.green,
//                   onPressed: () {},
//                   child: const Icon(Icons.add, size: 20),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
