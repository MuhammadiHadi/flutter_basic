import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSlideName extends StatefulWidget {
  @override
  State<CarouselSlideName> createState() => _CarouselSlideNameState();
}

class _CarouselSlideNameState extends State<CarouselSlideName> {
  List<String> imageList = const [
    'https://cdn.pixabay.com/photo/2017/10/28/07/47/woman-2896389_960_720.jpg',
    'https://cdn.pixabay.com/photo/2022/10/07/07/13/alps-7504344__340.jpg',
    'https://cdn.pixabay.com/photo/2018/04/07/22/18/nature-3299783__340.jpg',
    'https://cdn.pixabay.com/photo/2015/11/21/15/49/tree-1055091__340.jpg',
    'https://cdn.pixabay.com/photo/2017/10/22/13/24/malham-2877857__340.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 1.0,
                autoPlay: true,
                disableCenter: true),
            items: imageList
                .map((item) => Container(
                      width: double.infinity,
                      height: 300,
                      child: Center(
                        child: Image.network(
                          item,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
