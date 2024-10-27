import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousSliderDetailsViews extends StatelessWidget {
  const CarousSliderDetailsViews({
    super.key,
    required this.imagePaths,
  });

  final List<String> imagePaths;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
                  options: CarouselOptions(
     autoPlay: false,
     enlargeCenterPage: true,
     aspectRatio: 500 / 200,
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

