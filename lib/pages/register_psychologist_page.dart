import 'package:flutter/material.dart';

class RegisterPsychologistPage extends StatefulWidget {
  const RegisterPsychologistPage({super.key});

  @override
  State<RegisterPsychologistPage> createState() =>
      _RegisterPsychologistPageState();
}

class _RegisterPsychologistPageState extends State<RegisterPsychologistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "widget.title",
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
