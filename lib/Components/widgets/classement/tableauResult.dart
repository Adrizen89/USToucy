import 'package:flutter/cupertino.dart';
import 'package:ust/commons/color.dart';

tableauClassement(BuildContext, context){
  var w = MediaQuery.of(context).size.width;
  return Column(
    children: [
      lineTab(BuildContext, context, '         ','Equipe', 'MJ', 'BM', 'BE', 'PTS'),
      lineTab(BuildContext, context, '1. ','Toucy', '20', '34', '8', '72'),
      lineTab(BuildContext, context, '2. ','Toucy', '20', '34', '8', '72'),
      lineTab(BuildContext, context, '3. ','Toucy', '20', '34', '8', '72'),
      lineTab(BuildContext, context, '4. ','Toucy', '20', '34', '8', '72'),
      lineTab(BuildContext, context, '5. ','Toucy', '20', '34', '8', '72'),
      lineTab(BuildContext, context, '6. ','Toucy', '20', '34', '8', '72'),
      lineTab(BuildContext, context, '7. ','Toucy', '20', '34', '8', '72'),
      lineTab(BuildContext, context, '8. ','Toucy', '20', '34', '8', '72'),
      lineTab(BuildContext, context, '9. ','Toucy', '20', '34', '8', '72'),
      lineTab(BuildContext, context, '10.','Toucy', '20', '34', '8', '72'),
    ],
  );
}

lineTab(BuildContext, context, position, equipe, mj, bm, be, pts){
  var w = MediaQuery.of(context).size.width;
  return Container(
    child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(position, style: TextStyle(color: white),),
          Text(equipe, style: TextStyle(color: white),),
          Text(mj, style: TextStyle(color: white),),
          Text(bm, style: TextStyle(color: white),),
          Text(be, style: TextStyle(color: white),),
          Text(pts, style: TextStyle(color: white),),
        ],
      ),
      SizedBox(height: w*0.015,),
      Container(
        color: white,
        width: w*1,
        height: w*0.002,
      )
    ],
  ),
  );
}