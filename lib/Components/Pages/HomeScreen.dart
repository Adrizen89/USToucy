import 'package:flutter/material.dart';
import 'package:ust/Components/widgets/NavBar.dart';
import 'package:ust/Components/widgets/TopNews/bodyTop.dart';
import 'package:ust/Components/widgets/background.dart';
import 'package:ust/Components/widgets/classement/bodyClassement.dart';
import 'package:ust/Components/widgets/footer/bodyFooter.dart';
import 'package:ust/Components/widgets/infos/bodyInfos.dart';
import 'package:ust/Components/widgets/results/bodyResults.dart';
import 'package:ust/commons/color.dart';
import 'package:ust/commons/images.dart';
import '../widgets/Home.dart';

class HomeScreen extends StatefulWidget {
  
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
        children: <Widget>[
          Container(
            width: w*1,
            height: h*1,
            decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(homeImg), fit: BoxFit.cover,),
          ),
            child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: w*0.1),
            child: home(BuildContext, context),)
          
        ],
      ),
      ),
          )
        ],
      ),
      bodyTop(BuildContext, context),
      bodyInfos(BuildContext, context),
      bodyResults(BuildContext, context),
      bodyClassement(BuildContext, context),
      bodyFooter(BuildContext, context)
          ],
        )
      )
    );
  }
}
