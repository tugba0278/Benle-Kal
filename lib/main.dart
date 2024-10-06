import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:psychology_app/firebase_options.dart';
import 'package:psychology_app/pages/login_options_page.dart';
import 'package:psychology_app/pages/login_psychologist_page.dart';
import 'package:psychology_app/pages/login_student_page.dart';
import 'package:psychology_app/pages/splash_page.dart';
import 'package:psychology_app/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashPageRoute, //set the initial route
      routes: {
        splashPageRoute: (context) => const SplashPage(),
        loginOptionsPageRoute: (context) => const LoginOptionsPage(),
        loginStudentPageRoute: (context) => const LoginStudentPage(),
        loginPsychologistPageRoute: (context) => const LoginPsychologistPage(),
      },
    );
  }
}
