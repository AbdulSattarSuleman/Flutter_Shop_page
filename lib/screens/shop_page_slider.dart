// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ShopPageSlider extends StatelessWidget {
  // const ShopPageSlider({Key? key}) : super(key: key);
  List<String> sliderImages = [
    "assets/images/slider01.jpg",
    "assets/images/slider02.jpg",
    "assets/images/slider03.jpg",
    "assets/images/slider04.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlayAnimationDuration: Duration(milliseconds: 100),
        autoPlay: true,
        viewportFraction: 0.8,
        height: 200,
        enlargeCenterPage: true,
      ),
      items: sliderImages
          .map((item) => Container(
                width: MediaQuery.of(context).size.width,
                // height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(item),
                  fit: BoxFit.cover,
                )),
              ))
          .toList(),
    );
  }
}
