import 'package:flutter/widgets.dart';
import 'package:ust/commons/images.dart';

rs(BuildContext, context){
  var w = MediaQuery.of(context).size.width;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: w*0.02,
        child: Image.asset(fbImg),
      ),
      SizedBox(width: w*0.08,),
      Container(
        width: w*0.02,
        child:Image.asset(twitterImg)
      )
    ],
  );
}