import 'package:flutter/widgets.dart';
import 'package:ust/commons/color.dart';
import 'package:ust/commons/images.dart';

oneResult(BuildContext, context, date, score, imgL,imgR){
  var w = MediaQuery.of(context).size.width;
  return Center(
    child: Container(
    width: w*0.7,
    child: Column(
    children: [
      Container(
        color: primaire,
        width: w*1,
        height: w*0.002,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Image.asset(imgL, width: w*0.05,),
          ),
          Column(
            children: [
              Text(date, style: TextStyle(color: primaire, fontSize: w*0.015),),
              Text(score, style: TextStyle(color: primaire, fontSize: w*0.023))
            ],
          ),
          Container(
            child: Image.asset(imgR, width: w*0.05,),
          )
        ],
      )
    ],
  ),
  ),
  );
}