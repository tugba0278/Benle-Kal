import 'package:flutter/material.dart';
import 'package:psychology_app/styles.dart';

class Container2 {
  final Color color;

  Container2({this.color = whiteColor});

  Widget buildContainer(BuildContext context) {
    final containerHeight = MediaQuery.of(context).size.height * 0.75;

    return Container(
      height: containerHeight,
      color: color,
      alignment: Alignment.bottomCenter, // Resmi en alt ve ortasına hizala
      padding: const EdgeInsets.only(bottom: 20.0), // Alttan 20 piksel boşluk
      //curve image
      child: curvedArrowStyle,
    );
  }
}
