// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:psychology_app/auth-services/sign_in_service.dart';
import 'package:psychology_app/error-dialogs/error_dialog.dart';
import 'package:psychology_app/routes.dart';

class LoginHelper {
  static Future<void> login(
      {required BuildContext context,
      required TextEditingController emailController,
      required TextEditingController passwordController,
      required GlobalKey<FormState> formKey,
      required SignInService signInService}) async {
    if (formKey.currentState!.validate()) {
      String email = emailController.text;
      String password = passwordController.text;

      User? user =
          await signInService.signInWithEmailAndPassword(email, password);

      if (user != null) {
        print('Giriş başarılı : ${user.email}');
        Navigator.pushNamed(context, loginOptionsPageRoute);
      } else {
        print('Giriş Başarısız.');
        FocusScope.of(context).unfocus();
        Utils.showErrorDialog(context, 'Email veya şifrenizi kontrol ediniz');
        FocusScope.of(context).unfocus();

        emailController.clear();
        passwordController.clear();
      }
    }
  }
}
