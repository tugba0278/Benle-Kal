import 'package:flutter/material.dart';
import 'package:psychology_app/design-classes-widgets/endDrawer_widget.dart';
import 'package:psychology_app/design-classes-widgets/stroke_text_widget.dart';
import 'package:psychology_app/styles.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _About();
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StrokeText(text: "Hakkımızda"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: backVectorStyle),
        actions: [
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: menuVectorStyle))
        ],
      ),
      endDrawer: EndDrawerWidget(),
      body: const SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
