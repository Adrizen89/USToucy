
import 'package:flutter/widgets.dart';
import 'package:ust/commons/color.dart';
import 'package:ust/commons/images.dart';

background(BuildContext, context){
  var w = MediaQuery.of(context).size.width;
  return Container(
    child: Row(
      children: [
        Container(
          width: w*0.3,
          color: yellow,
        ),
        Container(
          width: w*0.7,
          child: Image.asset(homeImg),
        )
      ],
    ),
  );
}