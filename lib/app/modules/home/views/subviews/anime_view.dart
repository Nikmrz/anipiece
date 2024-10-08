import 'package:anipiece/app/core/values/s_spacing.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AnimeView extends GetView {
  const AnimeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
  options: CarouselOptions(height: 400.0, autoPlay: true),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
),
              Row(
                children: [
                  SSpacing.smW,
                  Text("Popular Anime",
                  style: Get.textTheme.titleLarge,
                  ),
                  const Spacer(),
                  Text('See all',
                  style: Get.textTheme.bodyMedium,
                  ),
                  Icon(Icons.arrow_forward_ios,size: 10,),
                  SSpacing.smW,
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
             child:  Row(
                children: [
                  SSpacing.smW,
                  Container(
                    width: 150,
                    height: 200,
                    color: Colors.amberAccent,
                  ),
                  SSpacing.smW,
                  Container(
                    width: 150,
                    height: 200,
                    color: Colors.amberAccent,
                  ),
                  SSpacing.smW,
                  Container(
                    width: 150,
                    height: 200,
                    color: Colors.amberAccent,
                  ),
                  SSpacing.smW,
                     Container(
                    width: 150,
                    height: 200,
                    color: Colors.amberAccent,
                  ),
                  SSpacing.smW,
               
                ],
              ),
              ),
            ],
          ),
        ),
      )

    );
  }
}
