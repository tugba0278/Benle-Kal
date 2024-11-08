import 'package:flutter/material.dart';
import 'package:psychology_app/classes/logo_column.dart';
import 'package:psychology_app/classes/splash_container1.dart';
import 'package:psychology_app/classes/splash_container2.dart';
import 'package:psychology_app/routes.dart';
import 'package:psychology_app/styles.dart';

class LoginOptionsPage extends StatefulWidget {
  const LoginOptionsPage({super.key});

  @override
  State<LoginOptionsPage> createState() => _LoginOptionsPageState();
}

class _LoginOptionsPageState extends State<LoginOptionsPage> {
  Splashcontainer1 splashcontainer1 = Splashcontainer1();
  SplashContainer2 splashContainer2 = SplashContainer2();
  LogoColumn logoColumn = LogoColumn();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Column(
            children: [
              //blue container
              splashcontainer1.buildContainer(context),

              //white container
              splashContainer2.buildContainer(context),
            ],
          ),
          //logo ve butonlar
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                logoColumn.buildColumn(context),

                const SizedBox(
                  height: 40,
                ),

                //psikolog butonu
                SizedBox(
                  width: 220,
                  height: 55,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, loginPsychologistPageRoute);
                    },
                    style: optionsButtonStyle,
                    //icon ve giriş texti
                    child: Row(
                      // mainAxisSize: MainAxisSize.min, // Buton içeriğinin minimum genişlikte olmasını sağlar
                      children: [
                        psyImageStyle,
                        const SizedBox(
                            width: 8), // İkon ve metin arasına boşluk
                        const Text(
                          'Psikolog Girişi',
                          style: optionsTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                //danışan butonu
                SizedBox(
                  width: 220,
                  height: 55,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, loginStudentPageRoute);
                    },
                    style: optionsButtonStyle,
                    //icon ve giriş texti
                    child: Row(
                      // mainAxisSize: MainAxisSize.min, // Buton içeriğinin minimum genişlikte olmasını sağlar
                      children: [
                        studentImageStyle,
                        const SizedBox(
                            width: 8), // İkon ve metin arasına boşluk
                        const Text(
                          'Danışan Girişi',
                          style: optionsTextStyle,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
