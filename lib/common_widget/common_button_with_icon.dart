



import 'package:flutter/material.dart';
import '../utils/app_font_size.dart';
import 'common_text_view.dart';

class CommonButtonIcon extends StatelessWidget{
  String text;
  FontWeight? fontWeight;
  double fontSize, iconSize;
  Color textColor, buttonPressColor, backgroundColor, borderColor, iconColor;
  TextAlign textAlign;
  FontStyle fontStyle;
  Function()? onTap;
  BorderRadius borderRadius;
  bool isSelected;
  IconData? iconData;


  CommonButtonIcon({
    required this.text,
    this.fontWeight = FontWeight.w400,
    this.textAlign  = TextAlign.start,
    this.fontStyle  = FontStyle.normal,
    this.fontSize = normalTextSize,
    this.buttonPressColor = Colors.black,
    this.textColor = Colors.black, this.onTap,
    this.backgroundColor = Colors.grey,
    this.iconColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.iconData,
    this.iconSize = 20,
    this.borderRadius = const BorderRadius.all(Radius.circular(5)),
    this.isSelected = false});


  @override
  Widget build(BuildContext context){
    return ElevatedButton.icon(
        onPressed: onTap!,
        icon: Icon(iconData!, color: iconColor,
        size: iconSize,),
        style: ButtonStyle(

          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return buttonPressColor;
              }else if(states.contains(MaterialState.focused)){
                return buttonPressColor;
              }
              return null; // Defer to the widget's default.
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: borderRadius,
                  side: BorderSide(color: borderColor)
              )
          ),
          backgroundColor:MaterialStateProperty.all(isSelected ? backgroundColor : Colors.grey)  ,

        ),
        label:  CommonTextView(text: text,
          textColor: textColor,
          textAlign: textAlign,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          fontSize: fontSize,
        ),
    );
  }

}