import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

import '../utils/app_images.dart';

class CommonNetworkImage extends StatelessWidget{
  double width, height,borderWidth, borderRadius;
  Color borderColor;
  BoxFit boxFit;
  String url;

  CommonNetworkImage({this.width = 100, this.borderColor = Colors.white,
    this.borderWidth = 0,this.height = 100, required this.url, this.borderRadius = 0,
  this.boxFit = BoxFit.fill,});


  @override
  Widget build(BuildContext context){
    return CachedNetworkImage(
      imageUrl: url,
      fit: boxFit,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          border: Border.all(
              color: borderColor,
              width: borderWidth
          ),
          image: DecorationImage(
              image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) =>  SizedBox(
        width: width,
        height: height,
        child:const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      errorWidget: (context, url, error) =>  Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          border: Border.all(
              color: borderColor,
              width: borderWidth
          ),
          image: const  DecorationImage(
              image: AssetImage(AppImages.placeholder), fit: BoxFit.cover),
        ),
      ),
    );
  }

}