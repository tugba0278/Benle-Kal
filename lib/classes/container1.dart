import 'package:flutter/widgets.dart';

class Container1 {
  final Color color;

  Container1({this.color = const Color(0xFF0D5E93)});

  Widget buildContainer(BuildContext context) {
    final containerHeight = MediaQuery.of(context).size.height * 0.25;

    return Container(
      height: containerHeight,
      color: color,
    );
  }
}
