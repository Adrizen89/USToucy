import 'package:flutter/widgets.dart';
import 'package:ust/commons/color.dart';
import 'package:ust/commons/images.dart';

oneResult(BuildContext, context, date, score){
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
            child: Image.asset(logoImg, width: w*0.07,),
          ),
          Column(
            children: [
              Text(date, style: TextStyle(color: primaire, fontSize: w*0.02),),
              Text(score, style: TextStyle(color: primaire, fontSize: w*0.04))
            ],
          ),
          Container(
            child: Image.asset(logoImg, width: w*0.07,),
          )
        ],
      )
    ],
  ),
  ),
  );
}