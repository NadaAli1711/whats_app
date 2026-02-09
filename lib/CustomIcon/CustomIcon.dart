import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget{
  String imageName;
  double marginRight;
  CustomIcon({required this.imageName ,this.marginRight = 0});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(right: marginRight), child: Image.asset(imageName,width: 24,height: 24));
  }
}