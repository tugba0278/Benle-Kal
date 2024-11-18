import 'package:flutter/widgets.dart';
import 'package:psychology_app/styles.dart';

class Splashcontainer1 {
  final Color color;

  Splashcontainer1({this.color = startBgColor});

  Widget buildContainer(BuildContext context) {
    final containerHeight = MediaQuery.of(context).size.height * 0.4;

    return Container(
      height: containerHeight,
      color: color,
    );
  }
}
