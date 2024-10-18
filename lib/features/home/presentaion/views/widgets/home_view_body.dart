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
              expandedHeight: 50.0,  // Increase the height of the SliverAppBar
              floating: false,        // Keep it non-floating for a collapsing effect
              pinned: true,           // Pin the SliverAppBar when scrolled to the top
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Collapsing Toolbar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
                // background: Image.network(
                //   "https://via.placeholder.com/300",  // Example background image
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("Item $index"),
            );
          },
        ),
      ),
    );
  }
}

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class SingleImageCarousel extends StatelessWidget {
//   final List<String> imagePaths = [
//     'assets/banner (1).jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return

