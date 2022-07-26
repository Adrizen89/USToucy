
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ust/commons/color.dart';

navBar(){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.menu, color: primaire,),
      onPressed: () {

      },),
  );
}