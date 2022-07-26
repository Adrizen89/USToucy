import 'package:flutter/widgets.dart';
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

rs(BuildContext, context){
  var w = MediaQuery.of(context).size.width;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          _linkFb();
        },
        child: Container(
        width: w*0.02,
        child: Image.asset(fbImg),
      ),
      ),
      SizedBox(width: w*0.08,),
      GestureDetector(
        onTap: () {
          _linkTwitter();
        },
        child: Container(
        width: w*0.02,
        child:Image.asset(twitterImg)
      ),
      )
    ],
  );
}