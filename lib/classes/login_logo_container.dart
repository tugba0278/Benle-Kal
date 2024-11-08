import 'package:flutter/widgets.dart';

class LogoContainer {
  final String imagePath;
  final double width;
  final double height;

  LogoContainer({required this.imagePath, this.width = 170, this.height = 170});

  Widget buildContainer(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
      ),
    );
  }
}
