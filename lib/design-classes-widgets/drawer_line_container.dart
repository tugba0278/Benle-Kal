import 'package:flutter/material.dart';
import 'package:psychology_app/styles.dart';

class DrawerLineContainer {
  Color color;

  DrawerLineContainer({this.color = blackColor});

  Widget buildDrawerLine(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width * 0.5;
    double heightSize = 1;
    return Container(
      color: color,
      width: widthSize,
      height: heightSize,
    );
  }
}
