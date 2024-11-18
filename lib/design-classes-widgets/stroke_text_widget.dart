import 'package:flutter/material.dart';
import 'package:psychology_app/styles.dart';

class StrokeText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color strokeColor;
  final Color fillColor;

  const StrokeText(
      {super.key,
      required this.text,
      this.fontSize = 20,
      this.strokeColor = const Color(0xFF798998),
      this.fillColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Stroke çizgi
        Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeightBold,
              fontFamily: fontFamily,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 3
                ..color = strokeColor),
        ),
        //fill(dolgu)
        Text(
          text,
          style: TextStyle(
              fontFamily: fontFamily,
              fontSize: fontSize,
              color: fillColor,
              fontWeight: fontWeightBold),
        )
      ],
    );
  }
}
