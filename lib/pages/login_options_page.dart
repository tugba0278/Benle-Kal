import 'package:flutter/material.dart';
import 'package:psychology_app/routes.dart';

class LoginOptionsPage extends StatefulWidget {
  const LoginOptionsPage({super.key});

  @override
  State<LoginOptionsPage> createState() => _LoginOptionsPageState();
}

class _LoginOptionsPageState extends State<LoginOptionsPage> {
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
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: const Color(0xFF0D5E93),
              ),
              //white container
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                color: Colors.white,
                alignment:
                    Alignment.bottomCenter, // Resmi en alt ve ortasına hizala
                padding: const EdgeInsets.only(
                    bottom: 20.0), // Alttan 20 piksel boşluk
                //curve image
                child: Image.asset(
                  'lib/assets/images/curved-arrow.png',
                  width: 60,
                  height: 60,
                ),
              )
            ],
          ),
          //logo ve butonlar
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Image.asset(
                  'lib/assets/images/login-options-logo.png',
                  width: 200,
                  height: 200,
                ),
                //benle kal yazısı
                Image.asset(
                  'lib/assets/images/benlekal-text.png',
                  width: 150,
                  height: 50,
                ),
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
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      overlayColor: const Color(0xFFE1ACAC),
                      backgroundColor: const Color(0xFFF3D1DB),
                      side: const BorderSide(
                        color: Colors.black, // Kenarlık rengini siyah yap
                        width: 1.3, // Kenarlık kalınlığı (isteğe bağlı)
                      ),
                    ),
                    //icon ve giriş texti
                    child: Row(
                      // mainAxisSize: MainAxisSize
                      //     .min, // Buton içeriğinin minimum genişlikte olmasını sağlar
                      children: [
                        Image.asset(
                          'lib/assets/images/psychologist.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                            width: 8), // İkon ve metin arasına boşluk
                        const Text(
                          'Psikolog Girişi',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 18,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400),
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
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      overlayColor: const Color(0xFFE1ACAC),
                      backgroundColor: const Color(0xFFF3D1DB),
                      side: const BorderSide(
                        color: Colors.black, // Kenarlık rengini siyah yap
                        width: 1.3, // Kenarlık kalınlığı (isteğe bağlı)
                      ),
                    ),
                    //icon ve giriş texti
                    child: Row(
                      // mainAxisSize: MainAxisSize
                      //     .min, // Buton içeriğinin minimum genişlikte olmasını sağlar
                      children: [
                        Image.asset(
                          'lib/assets/images/student.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                            width: 8), // İkon ve metin arasına boşluk
                        const Text(
                          'Danışan Girişi',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 18,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400),
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
