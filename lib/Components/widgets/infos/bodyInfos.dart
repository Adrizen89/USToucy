import 'package:flutter/widgets.dart';
import 'package:ust/Components/widgets/infos/rs.dart';
import 'package:ust/Components/widgets/infos/slider.dart';
import 'package:ust/Components/widgets/title.dart';
import 'package:ust/commons/color.dart';

bodyInfos(BuildContext, context){
  var w =MediaQuery.of(context).size.width;
  var h =MediaQuery.of(context).size.height;
  return Container(
    color: primaire,
    width: w*1,
    height: h*1,
    child : Padding(
      padding: EdgeInsets.symmetric(horizontal: w*0.05, vertical: w*0.0), 
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        title(BuildContext, context, 'Les infos du club.', white),
        carouSlider(BuildContext, context),
        Center(child: Text('Retrouvez nous sur nos réseaux sociaux !', textAlign: TextAlign.center,style: TextStyle(color:white, fontSize: w*0.013),),),
        rs(BuildContext, context)
      ],
    ),)
  );
}