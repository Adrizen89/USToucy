import 'package:flutter/widgets.dart';
import 'package:ust/commons/color.dart';
import 'package:ust/commons/images.dart';

bodyFooter(BuildContext, context) {
  var w = MediaQuery.of(context).size.width;
  return Container(
    width: w * 1,
    height: w * 0.2,
    color: primaire,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: white,
          width: w * 1,
          height: w * 0.001,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: w * 0.07,
              child: Image.asset(logoImg),
            ),
            Column(
              children: [
                Text(
                  'Bientôt...',
                  style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: w * 0.02),
                ),
                SizedBox(height: w*0.02,),
                Text(
                  'La boutique en ligne !',
                  style: TextStyle(color: white, fontSize: w * 0.015),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'USToucy',
                  style: TextStyle(color: yellow, fontSize: w * 0.02),
                ),
                SizedBox(height: w*0.02,),
                Text(
                  'Plus qu\'un club, une Famille !',
                  style: TextStyle(color: white, fontSize: w * 0.018),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Nos réseaux sociaux',
                  style: TextStyle(color: white, fontSize: w * 0.02),
                ),
                SizedBox(height: w*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: w * 0.02,
                      child: Image.asset(fbImg),
                    ),
                    SizedBox(
                      width: w * 0.08,
                    ),
                    Container(width: w * 0.02, child: Image.asset(twitterImg))
                  ],
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}
