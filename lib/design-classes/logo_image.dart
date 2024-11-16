import 'package:flutter/material.dart';

class LogoImage {
  final String imagePath;
  final double width;
  final double height;

  LogoImage(
      {this.imagePath = 'lib/assets/images/logo.png',
      required this.width,
      required this.height});

  Widget buildImage(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      //alignment: Alignment.center,
      fit: BoxFit.contain,
    );
  }
}
