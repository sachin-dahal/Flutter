import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> carouselImages = [
  'images/1.png',
  'images/2.png',
  'images/3.png',
  'images/4.png',
];

class CarouselEffect extends StatelessWidget {
  const CarouselEffect({
    @required this.carouselSlider,
    @required this.onPageChanged,
  });

  final CarouselController carouselSlider;
  final Function onPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: carouselSlider,
      options: CarouselOptions(
        initialPage: 0,
        onPageChanged: onPageChanged,
        height: 333.3,
        autoPlayAnimationDuration: Duration(seconds: 1),
        autoPlayInterval: Duration(seconds: 2),
        scrollPhysics: BouncingScrollPhysics(),
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
      ),
      items: carouselImages.map((imgUrl) {
        return Builder(builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF015461),
                  offset: Offset(0.0, 2.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.8,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                imgUrl,
                fit: BoxFit.fill,
              ),
            ),
          );
        });
      }).toList(),
    );
  }
}
