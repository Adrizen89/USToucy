import 'package:flutter/cupertino.dart';
import 'package:ust/Components/widgets/results/cardResult.dart';
import 'package:ust/Components/widgets/title.dart';
import 'package:ust/commons/color.dart';

bodyResults(BuildContext, context){
  var w =MediaQuery.of(context).size.width;
  var h =MediaQuery.of(context).size.height;
  return Container(
    color: white,
    width: w*1,
    height: h*1,
    child : Padding(
      padding: EdgeInsets.symmetric(horizontal: w*0.05, vertical: w*0.0), 
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        title(BuildContext, context, 'Résultats', primaire),
        oneResult(BuildContext, context, 'Le 27/06/2022', '8 - 0'),
        oneResult(BuildContext, context, 'Le 27/05/2022', '2 - 1'),
        oneResult(BuildContext, context, 'Le 27/04/2022', '3 - 6')
        
      ],
    ),)
  );
}