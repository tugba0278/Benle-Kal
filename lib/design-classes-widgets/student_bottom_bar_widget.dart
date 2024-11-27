import 'package:flutter/material.dart';
import 'package:psychology_app/routes.dart';
import 'package:psychology_app/styles.dart';

class StudentBottomBarWidget extends StatelessWidget {
  final Color color;
  final double height;
  final String routePath;

  const StudentBottomBarWidget(
      {super.key,
      this.color = bgColor,
      this.height = kBottomNavigationBarHeight,
      this.routePath = studentHomePageRoute});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: bgColor,
      height: 65,
      shape: const CircularNotchedRectangle(),
      clipBehavior: Clip.antiAlias,
      child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, routePath);
          },
          icon: homeVectorStyle),
    );
  }
}
