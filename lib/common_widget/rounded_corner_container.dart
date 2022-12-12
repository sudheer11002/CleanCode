import 'package:flutter/material.dart';

class RoundedCornerContainer extends StatelessWidget {
  double topLeft, topRight, bottomLeft, bottomRight, width, height, borderWidth, pLeft, pRight, pBottom, pTop, mTop, mBottom, mLeft, mRight;
  Color containerColor, borderColor;


  Widget? widget;

  RoundedCornerContainer(
      {super.key,
        this.topLeft = 0.0,
      this.topRight = 0.0,
      this.bottomLeft = 0.0,
      this.bottomRight = 0.0,
      this.containerColor = Colors.transparent,
      this.width = 150,
      this.height = 50,
        this.widget,
        this.borderWidth = 0,
        this.borderColor = Colors.transparent,
        this.pBottom = 0.0,
        this.pTop = 0.0,
        this.pLeft = 0.0,
        this.pRight= 0.0,
        this.mTop = 0.0,
        this.mBottom = 0.0,
        this.mLeft = 0.0,
         this.mRight = 0.0,
      });


  @override
  Widget build(BuildContext context){
    return Container(
      width: width,

      height: height,
      margin: EdgeInsets.only(left: mLeft, right: mRight, top:  mTop, bottom: mBottom),
      padding:  EdgeInsets.only(left: pLeft, right: pRight, top:  pTop, bottom: pBottom),
      decoration: BoxDecoration(
        color: containerColor,
        border: Border.all(color: borderColor,width: borderWidth),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight)
        ),
      ),
      child:  widget,
    );
  }

}
