import 'package:flutter/material.dart';
import 'package:psychology_app/styles.dart';

class SplashContainer2 {
  final Color color;

  SplashContainer2({this.color = whiteColor});

  Widget buildContainer(BuildContext context) {
    final containerheight = MediaQuery.of(context).size.height * 0.6;

    return Container(
      height: containerheight,
      color: color,
      alignment: Alignment.bottomCenter, // Resmi en alt ve ortasına hizala
      padding: const EdgeInsets.only(bottom: 20.0), // Alttan 20 piksel boşluk
      //curve image
      child: curvedArrowStyle,
    );
  }
}
