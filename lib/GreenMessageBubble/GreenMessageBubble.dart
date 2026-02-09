import 'package:flutter/material.dart';

class GreenMessageBubble extends StatelessWidget{
  String text;
  double width;
  double height;
  double padding_Top;
  double padding_Bottom;
  double padding_Right;
  double padding_Left;

  GreenMessageBubble({required this.text, this.width = 268 , required this.height, required this.padding_Bottom, required this.padding_Left , required this.padding_Right , required this.padding_Top});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0XFF168C4B),
        borderRadius: BorderRadiusGeometry.only(
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),

      child: Padding(
        padding: EdgeInsets.fromLTRB(padding_Left, padding_Top, padding_Right, padding_Bottom),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),

      ),
    );
  }

}