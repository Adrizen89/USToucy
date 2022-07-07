import 'package:flutter/material.dart';
import 'package:ust/Components/Pages/ClassementScreen.dart';
import 'package:ust/Components/Pages/ResultScreen.dart';
import 'package:ust/commons/color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ust/commons/images.dart';
import 'package:sliver_header_delegate/sliver_header_delegate.dart';
import 'dart:math';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [red, yellow])),
        child:  Scaffold(
          backgroundColor: Colors.transparent,
              appBar: AppBar(
                leading: Container(child:Image.asset(logoImg)),
                backgroundColor: Colors.transparent,
                toolbarHeight: 100,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                title: Text(
                  'USToucy',
                ),
                centerTitle: true,
                actions: [
                  Row(
                    children: [
                      Container(
                        height: w*0.03,
                        width: w*0.08,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 3,
                              color: red)
                        ], color: red),
                        child: Text('Résultats')
                      ),
                      SizedBox(
                        width: w*0.1,
                      ),
                      Container(
                        height: w*0.03,
                        width: w*0.08,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 3,
                              color: red)
                        ], color: red),
                        child: Text('Classements')
                      ),
                      SizedBox(
                        width: 26,
                      )
                    ],
                  )
                ],
              ),
              body: SingleChildScrollView(child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: w*0.5,
                          height: w*0.3,
                          color: Colors.red,
                        ),
                        Container(
                    child: Text('La montée de l\'USToucy en Régional 3 !'),
                  )
                      ]),
                  ),

                  SizedBox(height: w*0.1,),

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                        children: [
                          Container(
                            width: w*0.3,
                          height: w*0.3,
                          color: Colors.red,
                          ),
                          Container(child: Text('Text 1'),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: w*0.3,
                          height: w*0.3,
                          color: Colors.red,
                          ),
                          Container(child: Text('Text 1'),)
                        ],
                      )
                        ],
                      )
                    ],
                  )
                ],
              ),)
              ),
        );
  }
}
