import 'package:flutter/cupertino.dart';
import 'package:ust/commons/color.dart';
import 'package:ust/commons/images.dart';

topInfo(BuildContext, context){
  var w = MediaQuery.of(context).size.width;
  return Stack(
    clipBehavior: Clip.none,
    children: <Widget>[
      Center(child: Container(
        width: w*0.7,
        height: w*0.35,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(topImg), fit: BoxFit.cover,),
          ),
        ),),
        Positioned(
          left: -w*0.01,
          bottom: w*0.08,
          child: Container(
          width: w*0.3,
          height: w*0.2,
          color: yellow.withOpacity(0.8),
          child: Center(
            child: Text('Toucy monte en Régional 3 !', textAlign: TextAlign.center, style: TextStyle(color: white, fontSize: w*0.03, fontWeight: FontWeight.bold),),
          ),
        ))
    ],
    
  );
      
}