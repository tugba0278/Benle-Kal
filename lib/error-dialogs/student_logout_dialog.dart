// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:psychology_app/routes.dart';
import 'package:psychology_app/styles.dart';

class LogoutDialog {
  static void showLogOutDialog(BuildContext context) {
    FocusScope.of(context).unfocus(); // Klavyeyi kapat
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: bgColor,
        title: const Text(
          "Çıkış",
          style: TextStyle(color: whiteColor),
        ),
        content: const Text(
          "Çıkış yapmak istiyor musunuz?",
          style: errorTextStyle,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            style: errorTextButtonStyle,
            child: const Text(
              "İptal",
              style: logRegTextStyle,
              //textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            width: 300,
          ),
          TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushNamedAndRemoveUntil(
                  context, loginOptionsPageRoute, (route) => false);
            },
            style: errorTextButtonStyle,
            child: const Text(
              "Çıkış Yap",
              style: logRegTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
