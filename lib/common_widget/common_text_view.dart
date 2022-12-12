import 'package:flutter/material.dart';

class CommonTextView extends StatelessWidget {
  String text;
  FontWeight? fontWeight;
  double? fontSize;
  Color textColor;
  TextAlign textAlign;
  FontStyle fontStyle;
  TextOverflow textOverflow;
  TextDecoration? textDecoration;


  CommonTextView({
    super.key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.fontStyle = FontStyle.normal,
    this.textAlign = TextAlign.start,
    this.textColor = Colors.black,
    this.textOverflow = TextOverflow.visible,
    this.textDecoration = TextDecoration.none,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      overflow: textOverflow,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: textColor,
        fontStyle: fontStyle,
        decoration: textDecoration,

      ),
    );
  }
}
