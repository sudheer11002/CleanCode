
import 'package:flutter/material.dart';

import '../utils/app_font_size.dart';
import 'common_text_view.dart';

class DrawerCommonList extends StatelessWidget{
  IconData icon;
  double iconSize, fontSize;
  Color iconColor,textColor;
  String title;
  FontWeight fontWeight;
  TextAlign textAlign;
  FontStyle fontStyle;
  Function()? onTap;
  DrawerCommonList({required this.icon, required this.title,
  this.iconSize = 25,
  this.iconColor = Colors.black,
  this.fontWeight = FontWeight.w400,
  this.textAlign  = TextAlign.start,
  this.fontStyle  = FontStyle.normal,
  this.fontSize = normalTextSize,
  this.textColor = Colors.black, this.onTap});

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: appWidth,
        child:Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(icon,
              size: iconSize,
              color: iconColor,
            ),
            const SizedBox(width: 10,),
            CommonTextView(text: title,
              textColor: textColor,
              textAlign: textAlign,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              fontSize: fontSize,
            )
          ],
        ),

      ),
    );
  }


}