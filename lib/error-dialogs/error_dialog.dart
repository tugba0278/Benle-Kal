import 'package:flutter/material.dart';
import 'package:psychology_app/styles.dart';

class Utils {
  static void showErrorDialog(BuildContext context, String message) {
    FocusScope.of(context).unfocus(); // Klavyeyi kapat
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: bgColor,
        title: const Text(
          "Hata",
          style: TextStyle(color: whiteColor),
        ),
        content: Text(
          message,
          style: errorTextStyle,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            style: errorTextButtonStyle,
            child: const Text(
              "Tamam",
              style: logRegTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
