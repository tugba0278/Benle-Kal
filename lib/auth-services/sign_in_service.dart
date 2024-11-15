// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';

class SignInService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Kullanıcı bilgilerini kontrol eden giriş yapma fonksiyonu
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      //Giriş başarılıysa, kullanıcı bilgilerini döner.
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      //Firebase hatalarını ayıklar.
      print('Hata kodu: ${e.code}');
      print('Hata mesajı: ${e.message}');
      print(e.code);

      if (e.code == 'user-not-found') {
        print('Bu e-posta ile kayıtlı kullanıcı bulunamadı.');
      } else if (e.code == 'wrong-password') {
        print('Yanlış Şifre girdiniz.');
      } else if (e.code == 'invalid-email') {
        print('Geçerli bir e-posta adresi giriniz.');
      } else {
        print('Bilinmeyen bir hata: ${e.message}');
      }

      return null;
    } catch (e) {
      //Diğer hataları ayıklar.
      print('Bir hata oluştu: $e');
      return null;
    }
  }
}
