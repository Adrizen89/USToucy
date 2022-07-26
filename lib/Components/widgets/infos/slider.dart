import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ust/commons/color.dart';

carouSlider(BuildContext, context){
  var w =MediaQuery.of(context).size.width;
  return CarouselSlider(
  options: CarouselOptions(height: w*0.25, viewportFraction: 0.32,),
  items: [1,2,3,4].map((i) {
    return Builder(
      builder: (context) {
        return Container(
          width: w*0.23,
          margin: EdgeInsets.symmetric(horizontal: 1.0),
          decoration: BoxDecoration(
            color: white
          ),
          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
);
}