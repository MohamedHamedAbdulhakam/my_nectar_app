import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_nectar_app/core/widgets/logo_section.dart';

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
          SliverAppBar(
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
        body: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 386/ 114,
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
            )),
          ],
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

