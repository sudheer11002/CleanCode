
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

import '../utils/app_colors.dart';
import '../utils/app_font_size.dart';


class ZoomImageView extends StatelessWidget{
  String imageUrl;


  ZoomImageView({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: colorWhite,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        backgroundColor: colorWhite,
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back, color: colorBlack, size: 25),
          onTap: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        width: appWidth,
        height: appHeight,
        color: colorWhite,
        child: PhotoView(
          imageProvider: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}