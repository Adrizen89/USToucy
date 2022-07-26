import 'package:flutter/widgets.dart';
import 'package:ust/commons/color.dart';

title(BuildContext, context, textTitle, couleur){
  var w = MediaQuery.of(context).size.width;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(textTitle, style: TextStyle(color: couleur, fontSize: w*0.03, fontWeight: FontWeight.bold),),
    Container(
      color: yellow,
      width: w*0.1,
      height: w*0.01,
    )
  ],);
}