import 'package:flutter/material.dart';
import 'package:psychology_app/design-classes-widgets/logo_image.dart';
import 'package:psychology_app/routes.dart';
import 'package:psychology_app/string-values/splash_string.dart';
import 'package:psychology_app/styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  LogoImage logoImage = LogoImage(width: 240, height: 240);

  @override
  Widget build(BuildContext context) {
    Image nextButtonStyle = Image.asset(
      'lib/assets/vector/next1.png',
      width: MediaQuery.of(context).size.width * 0.07,
      height: MediaQuery.of(context).size.height * 0.07,
      // fit: BoxFit.contain,
    );

    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //splash logo
            logoImage.buildImage(context),

            //splash text
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 70, 40, 0),
              child: Text(
                splashString,
                style: splashTextStyle,
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
                icon: nextButtonStyle,
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
