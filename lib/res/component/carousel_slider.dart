import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/funcation/fun.dart';
import 'package:flutter_basic/res/color/color.dart';

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
          SizedBox(
            height: 50,
          ),
          MaterialButton(
              color: AppColors.blue,
              child: Text(
                "Show snack bar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Fun().Snakbarshow(context, "Upload again", "Try");
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shadowColor: Colors.grey,
              child: ListTile(
                leading: Image.asset("assets/images/facebook.png"),
                title: Text("Facebook"),
                subtitle: Text("1M download"),
                trailing: Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Center(
                    child: Text(
                      "Get",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
