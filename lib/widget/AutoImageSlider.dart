import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AutoImageSlider extends StatefulWidget {
  const AutoImageSlider({super.key});

  @override
  State<AutoImageSlider> createState() => _AutoImageSliderState();
}

class _AutoImageSliderState extends State<AutoImageSlider> {
  List<String> imageList = [
    'assets/banner.png',
  ];

  int Current_Index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Container(
                height: size.height * 1,
                width: size.width * 1,
                decoration: BoxDecoration(
                  // color: Colors.green,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/banner.png'),
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: size.height * 0.2,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 3 / 2,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
