

import 'package:flutter/widgets.dart';
import 'package:ust/commons/color.dart';
import 'package:ust/commons/images.dart';

 home(BuildContext, context) {
  var w = MediaQuery.of(context).size.width;
  return Container(
    width: w*0.8,
    child: Row(
      children: [
        contpos(BuildContext, context),
        SizedBox(
          width: w*0.1,
        ),
        Container(
          width: w*0.15,
          child: Image.asset(logoImg),
        )
      ],
    ),
  );
}

contpos(BuildContext, context){
  var w =MediaQuery.of(context).size.width;
  return Stack(
      clipBehavior: Clip.none,
    children: <Widget>[
      Container(
          height: w*0.25,
          width: w*0.37,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('USToucy,', style: TextStyle(fontSize: w*0.05, fontWeight: FontWeight.bold, color: primaire),),
                Text('Plus qu\'un club, une Famille !', style: TextStyle(fontSize: w*0.015, color: primaire),)
              ],
            )),
        ),
        Positioned(
          right: -w*0.05,
          bottom: w*0.12,
          child: Container(
          width: w*0.11,
          height: w*0.02,
          color: yellow,
        ),),
    ],
  );
}