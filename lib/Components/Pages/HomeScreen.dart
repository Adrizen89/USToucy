import 'package:flutter/material.dart';
import 'package:ust/Components/Pages/ClassementScreen.dart';
import 'package:ust/Components/Pages/ResultScreen.dart';
import 'package:ust/commons/color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ust/commons/images.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: base,
      appBar: AppBar(
        backgroundColor: base,
        title: Image.asset(logoImg),
        centerTitle: true,
        actions: [
          Container(
            width: w*0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Results()),
              );
            },
            child: Text('Résultats', style: TextStyle(color: text),),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Classement()),
              );
            },
            child: Text('Classement', style: TextStyle(color: text)),
          ),
            ],
          ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: w * 0.5,
                child: CarouselSlider(
                    options: CarouselOptions(
                      height: w * 0.33,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 1000),
                      autoPlayCurve: Curves.decelerate,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [1, 2, 3, 4].map((i) {
                      return Builder(builder: (BuildContext context) {
                        return Container( width: w*0.6, height: w*0.1, color: Colors.blue,);
                      });
                    }).toList())),
                    Container(
                      child: Text('La montée de l\'USToucy en R3 !', style: TextStyle(fontSize: w*0.03),),
                    )
            ],
          )
        ],
      ),
    );
  }
}
