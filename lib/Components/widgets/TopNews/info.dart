import 'package:flutter/cupertino.dart';
import 'package:ust/commons/color.dart';
import 'package:ust/commons/images.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

topInfo(BuildContext, context) {
  var w = MediaQuery.of(context).size.width;
  return Stack(
    clipBehavior: Clip.none,
    children: <Widget>[
      Center(
        child: Container(
          width: w * 0.7,
          height: w * 0.35,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(topImg),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Positioned(
          left: -w * 0.01,
          bottom: w * 0.08,
          child: FlipCard(
            fill: Fill
                .fillBack,
            direction: FlipDirection.HORIZONTAL,
            front: Container(
              width: w * 0.3,
              height: w * 0.2,
              decoration: BoxDecoration(
                color: yellow.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('Toucy monte en Régional 3 !', textAlign: TextAlign.center, style: TextStyle(color: white, fontSize: w*0.03, fontWeight: FontWeight.bold),),)
            ),
            back: Container(
              width: w * 0.3,
              height: w * 0.2,
              decoration: BoxDecoration(
                color: yellow,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('Toucy revient en Régional 3 après une saison incroyable ! La team UST a pu validé leur montée grâce à la deuxième place grâce à la victoire contre Champs-sur-Yonne !', textAlign: TextAlign.center,style: TextStyle(color: white, fontSize: w*0.015),),),
            ),
          ))
    ],
  );
}
