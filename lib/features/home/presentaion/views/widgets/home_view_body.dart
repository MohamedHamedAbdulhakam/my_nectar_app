import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  final List<String> imagePaths = [
    'assets/homeImage.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Remove the main AppBar here
      body: NestedScrollView(
        
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 50.0, // Increase the height of the SliverAppBar
              floating: true, // Keep it non-floating for a collapsing effect
            // Pin the SliverAppBar when scrolled to the top
             title: Text("data"),
            ),
            // SliverToBoxAdapter(
            //   child: CustomScrollView(slivers: [
            //     Text('data'),
            //   ]),
            // )
          ];
        },
        body:Scaffold(
          body: Expanded(
              child:  Column( children: [
             Container(
                    height: 50,
                    width: 200,
                    color: Colors.black,
                  ),
            SingleChildScrollView(
                child: Column(
                  children: [
                   
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
            
          ], ),),
       
        )
        
        // body: ListView.builder(
        //   itemCount: 20,
        //   itemBuilder: (BuildContext context, int index) {
        //     return ListTile(
        //       title: Text("Item $index"),
        //     );
        //   },
        // ),
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

