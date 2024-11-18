import 'package:flutter/material.dart';
import 'package:psychology_app/styles.dart';

class HomePageGrid extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final String imagePath;
  final String text;

  const HomePageGrid({
    super.key,
    this.color = const Color(0xFF063B6C),
    this.height = 130,
    this.width = 130,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 75,
            width: 75,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: gridTextStyle,
          ),
        ],
      ),
    );
  }
}
