import 'package:flutter/widgets.dart';

class Splashcontainer1 {
  final Color color;

  Splashcontainer1({this.color = const Color(0xFF0D5E93)});

  Widget buildContainer(BuildContext context) {
    final containerHeight = MediaQuery.of(context).size.height * 0.4;

    return Container(
      height: containerHeight,
      color: color,
    );
  }
}
