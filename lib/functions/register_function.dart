// ignore_for_file: avoid_print, use_build_context_synchronously

import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:psychology_app/auth-services/sign_up_service.dart';
import 'package:psychology_app/error-dialogs/error_dialog.dart';

class RegisterHelper {
  static Future<void> register(
      {required BuildContext context,
      required TextEditingController emailController,
      required TextEditingController passwordController,
      required TextEditingController repPasswordController,
      required GlobalKey<FormState> formKey,
      required SignUpService signUpService,
      required String routePath}) async {
    if (formKey.currentState!.validate() &&
        passwordController.text == repPasswordController.text) {
      String email = emailController.text;
      String password = passwordController.text;
      //String repPassword = repPasswordController.text;

      try {
        User? user = await signUpService.signUpWithEmailAndPassword(
            context, email, password);
        if (user != null) {
          print('User is succesfully created');
          Navigator.pushNamedAndRemoveUntil(
              context, routePath, (route) => false);
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Kaydınız oluşturuldu.')));
        }
      } catch (e) {
        if (e is FirebaseAuthException) {
          if (e.code == 'email-already-in-use') {
            print('The email address is already in use by another account.');
            Utils.showErrorDialog(
                context, 'Bu email adresi zaten kullanılmakta.');
          } else {
            print('Firebase Authentication Error: ${e.message}');
          }
        }
      }
    } else if (formKey.currentState!.validate() &&
        repPasswordController.text != passwordController.text) {
      Utils.showErrorDialog(context, 'Şifreler uyuşmuyor.');
      return;
    } else {
      print('Error: $e');
    }
    emailController.clear();
    passwordController.clear();
    repPasswordController.clear();
  }
}
