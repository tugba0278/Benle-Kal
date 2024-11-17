import 'package:flutter/material.dart';

class PsychologHomePage extends StatefulWidget {
  const PsychologHomePage({super.key});

  @override
  State<PsychologHomePage> createState() => _PsychologHomePage();
}

class _PsychologHomePage extends State<PsychologHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Psycholog Home Page'),
        leading: Icon(Icons.backspace_outlined),
      ),
    );
  }
}
