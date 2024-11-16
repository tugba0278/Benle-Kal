// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:psychology_app/error-dialogs/error_dialog.dart';

class SignUpService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      BuildContext context, String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      //giriş başarılıysa kullanıcı bilgilerini döndür
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      //firebase hataları ayıklar.
      print('hata kodu: ${e.code}');
      print(e.message);

      if (e.code == 'email-already-in-use') {
        print('The email address is already in use by another account.');
        Utils.showErrorDialog(context, 'Bu email adresi zaten kullanılmakta.');
      } else {
        print('Firebase Authentication Error: ${e.message}');
      }
      return null;
    } catch (e) {
      //diğer hataları ayıklar.
      print('bir hata oluştu: $e');
      return null;
    }
  }
}
