import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  final List<String> imagePaths = [
    'assets/homeImage.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 50.0,
            floating: true,
            title: Text("data"),
          ),
          // You need to wrap non-sliver widgets in SliverToBoxAdapter
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.black,
                ),
                // Use SingleChildScrollView inside a SliverToBoxAdapter
                Container(
                  height: 550,
                  width: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 550,
                  width: 200,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// 
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class HomeViewBody extends StatelessWidget {
//   const HomeViewBody({super.key});
//    HomeViewBody({super.key});
//   final List<String> imagePaths = [
//     'assets/homeImage.jpg',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
//     return CarouselSlider(      options: CarouselOptions(
//          autoPlay: true,
//          enlargeCenterPage: true,
//          aspectRatio: 16 / 9,
//          viewportFraction: 0.8,
//        ),
//        items: imagePaths.map((path) {
//          return Builder(
//            builder: (BuildContext context) {
//              return Image.asset(
//                path,
//                fit: BoxFit.cover,
//              );
//            },
//          );
//        }).toList(),
//      );
//    }
//  }

