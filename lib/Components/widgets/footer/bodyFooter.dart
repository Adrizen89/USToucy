import 'package:flutter/widgets.dart';
import 'package:ust/commons/color.dart';
import 'package:ust/commons/images.dart';
import 'package:url_launcher/url_launcher.dart';

void _linkFb() async {
    final Uri url = Uri.parse("https://www.facebook.com/UsToucyFootball");
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "Impossible de lancer le lien.";
    }
  }

void _linkTwitter() async {
    final Uri url = Uri.parse("https://twitter.com/toucyfootball");
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      print("Impossible de lancer le lien.");
    }
  }

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
                      fontSize: w * 0.013),
                ),
                SizedBox(height: w*0.02,),
                Text(
                  'La boutique en ligne !',
                  style: TextStyle(color: white, fontSize: w * 0.01),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'USToucy',
                  style: TextStyle(color: yellow, fontSize: w * 0.013),
                ),
                SizedBox(height: w*0.02,),
                Text(
                  'Plus qu\'un club, une Famille !',
                  style: TextStyle(color: white, fontSize: w * 0.01),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Nos réseaux sociaux',
                  style: TextStyle(color: white, fontSize: w * 0.013),
                ),
                SizedBox(height: w*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _linkFb();
                      },
                      child: Container(
                      width: w * 0.02,
                      child: Image.asset(fbImg),
                    ),
                    ),
                    SizedBox(
                      width: w * 0.08,
                    ),
                    GestureDetector(
                      onTap: () {
                        _linkTwitter();
                      },
                      child: Container(width: w * 0.02, child: Image.asset(twitterImg)),
                    )
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
