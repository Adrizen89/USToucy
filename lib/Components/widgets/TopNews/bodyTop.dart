
import 'package:flutter/widgets.dart';
import 'package:ust/Components/widgets/TopNews/info.dart';
import 'package:ust/Components/widgets/title.dart';
import 'package:ust/commons/color.dart';

bodyTop(BuildContext, context){
  var w = MediaQuery.of(context).size.width;
  var h = MediaQuery.of(context).size.height;
  return Container(
    color: white,
    height: h*1,
    width: w*1,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: w*0.05, vertical: w*0.0), 
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      title(BuildContext, context, 'A la une ...', primaire),
      topInfo(BuildContext, context)
      ],
    ),)
  );
}