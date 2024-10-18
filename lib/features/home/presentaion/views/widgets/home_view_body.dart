import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
   HomeViewBody({super.key});
  final List<String> imagePaths = [
    'assets/homeImage.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(      options: CarouselOptions(
         autoPlay: true,
         enlargeCenterPage: true,
         aspectRatio: 16 / 9,
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
