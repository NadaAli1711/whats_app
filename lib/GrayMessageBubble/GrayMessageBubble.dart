import 'package:flutter/material.dart';

class GrayMessageBubble extends StatelessWidget{
  // double height;
  double width;
  String text;
  double paddingLeft;
  double paddingBottom;
  GrayMessageBubble({required this.text , required this.width ,required this.paddingLeft,required this.paddingBottom});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        // height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color(0XCC232D36),
          borderRadius: BorderRadiusGeometry.only(
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
        ),

        child: Padding(
          padding: EdgeInsets.fromLTRB(paddingLeft, 16, 16,
          paddingBottom),
          child: Text(text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

}