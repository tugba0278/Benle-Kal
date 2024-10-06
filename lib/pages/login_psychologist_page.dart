import 'package:flutter/material.dart';

class LoginPsychologistPage extends StatefulWidget {
  const LoginPsychologistPage({super.key});

  @override
  State<LoginPsychologistPage> createState() => _LoginPsychologistPageState();
}

class _LoginPsychologistPageState extends State<LoginPsychologistPage> {
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
