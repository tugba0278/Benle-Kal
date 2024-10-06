import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psychology_app/routes.dart';
import 'package:psychology_app/string-values/splash_string.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //splash logo
            Image.asset(
              'lib/assets/images/splash-logo.png',
              width: 240,
              height: 240,
              //alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
            //splash text
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 70, 40, 0),
              child: Text(
                splashString,
                style: TextStyle(
                  color: Color(0xFF063B6C),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Inter",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //splash next button
            Padding(
              padding: const EdgeInsets.fromLTRB(330, 70, 30, 0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, loginOptionsPageRoute, (_) => false);
                },
                icon: Image.asset(
                  'lib/assets/vector/next1.png',
                  width: MediaQuery.of(context).size.width * 0.07,
                  height: MediaQuery.of(context).size.height * 0.07,
                  // fit: BoxFit.contain,
                ),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                highlightColor: const Color(0xFFFFE6E6),
              ),
            )
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(330, 0, 30, 0),
            //   child: GestureDetector(
            //     onTap: () {},
            //     child: Image.asset(
            //       'lib/assets/vector/next1.png',
            //       width: MediaQuery.of(context).size.width * 0.07,
            //       height: MediaQuery.of(context).size.height * 0.07,
            //       fit: BoxFit.contain,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
