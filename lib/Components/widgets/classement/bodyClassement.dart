import 'package:flutter/cupertino.dart';
import 'package:ust/Components/widgets/classement/tableauResult.dart';
import 'package:ust/Components/widgets/title.dart';
import 'package:ust/commons/color.dart';

bodyClassement(BuildContext, context){
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
        title(BuildContext, context, 'Classement', white),
        tableauClassement(BuildContext, context)
      ],
    ),)
  );
}