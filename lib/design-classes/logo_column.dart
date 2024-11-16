import 'package:flutter/material.dart';

class LogoColumn {
  Widget buildColumn(BuildContext context) {
    return Column(
      children: [
        //logo
        Image.asset(
          'lib/assets/images/login-options-logo.png',
          width: 200,
          height: 200,
        ),

        //benle kal yazısı
        Image.asset(
          'lib/assets/images/benlekal-text.png',
          width: 150,
          height: 50,
        ),
      ],
    );
  }
}
