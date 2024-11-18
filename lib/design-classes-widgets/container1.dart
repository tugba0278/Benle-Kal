import 'package:flutter/widgets.dart';
import 'package:psychology_app/styles.dart';

class Container1 {
  final Color color;

  Container1({this.color = startBgColor});

  Widget buildContainer(BuildContext context) {
    final containerHeight = MediaQuery.of(context).size.height * 0.25;

    return Container(
      height: containerHeight,
      color: color,
    );
  }
}
