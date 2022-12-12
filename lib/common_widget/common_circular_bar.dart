import 'package:flutter/material.dart';

import '../utils/app_font_size.dart';

class CommonCircularBar extends StatelessWidget {
  Color color;

  CommonCircularBar({super.key, required this.color});


  @override
  Widget build(BuildContext context){
    return Container(
      width: appWidth,
      height: appHeight,
      color: Colors.grey.withAlpha(50),
      child: Center(
        child: CircularProgressIndicator(
          color: color,

        ),
      ),
    );
  }
}
