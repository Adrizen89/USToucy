import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ust/commons/color.dart';
import 'package:ust/commons/images.dart';
import 'package:flip_card/flip_card.dart';

carouSlider(BuildContext, context) {
  var w = MediaQuery.of(context).size.width;
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        flipCard(BuildContext, context, 'Tirage Coupe de France ', 'Découvrez le tirage de l\'UST.', cdf, 'L\'USToucy affrontera Varzy, un club de D3, pour le premier tour.'),
        flipCard(BuildContext, context, 'Appel au Sponsoring !', '', sponsor, 'Notre club recherche des sponsors pour nos différentes catégories ! Contactez-nous.'),
        flipCard(BuildContext, context, 'L\'Ust recrute !', 'Venez vous entrainer et rencontrer les membres du club.', recrutement, 'Venez vous entrainer et rencontrer les membres du club.'),
        flipCard(BuildContext, context, 'Assemblée Générale !', 'Libre à tous.', ag, 'Venez découvrir les ambitions du club !'),
        
      ],
    ),
  );
}

flipCard(BuildContext, context, title, desc, img, descb) {
  return FlipCard(
            fill: Fill
                .fillBack,
            direction: FlipDirection.HORIZONTAL,
            front: cardSliderFront(BuildContext, context, title, desc, img),
            back : cardSliderBack(BuildContext, context, title, descb, img),
  );
}

cardSliderFront(BuildContext, context, title, desc, img) {
  var w = MediaQuery.of(context).size.width;
  return Container(
    width: w * 0.17,
    height: w*0.2,
    margin: EdgeInsets.symmetric(horizontal: w*0.04),
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      children: [
        Container(
          height: w*0.1,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img,),
              fit: BoxFit.cover),
            color: yellow,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),
        ),
        SizedBox(height: w*0.01,),

        Text(title, textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: w*0.012),),

        SizedBox(height: w*0.01,),

        Text(desc, textAlign: TextAlign.center, style: TextStyle(fontSize: w*0.01),)
      ],
    ),
  );
}

cardSliderBack(BuildContext, context, title, descb, img) {
  var w = MediaQuery.of(context).size.width;
  return Container(
    width: w * 0.17,
    height: w*0.2,
    margin: EdgeInsets.symmetric(horizontal: w*0.04),
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(title, textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: w*0.012),),

        SizedBox(height: w*0.01,),

        Text(descb, textAlign: TextAlign.center, style: TextStyle(fontSize: w*0.01),)
      ],
    ),
  );
}
