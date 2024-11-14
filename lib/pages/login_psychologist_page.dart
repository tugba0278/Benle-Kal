import 'package:flutter/material.dart';
import 'package:psychology_app/classes/container1.dart';
import 'package:psychology_app/classes/container2.dart';
import 'package:psychology_app/classes/login_logo_container.dart';
import 'package:psychology_app/routes.dart';
import 'package:psychology_app/styles.dart';

class LoginPsychologistPage extends StatefulWidget {
  const LoginPsychologistPage({super.key});

  @override
  State<LoginPsychologistPage> createState() => _LoginPsychologistPageState();
}

class _LoginPsychologistPageState extends State<LoginPsychologistPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController =
      TextEditingController(); //email input kontrolü yapar
  final TextEditingController _passwordController =
      TextEditingController(); //şifre input kontrolü yapar

  @override
  void dispose() {
    _emailController.dispose(); //email objesi bellekten kaldırılır.
    _passwordController.dispose(); //şifre objesi bellekten kaldırılır.
    super.dispose(); //widget'ın tamamı bellekten kaldırılır.
  }

  @override
  Widget build(BuildContext context) {
    Container1 container1 = Container1(); //blue container objesi
    Container2 container2 = Container2(); //white container objesi
    LogoContainer loginLogoContainer = LogoContainer(
        imagePath: 'lib/assets/images/psycholog-logo-ellipse.png');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  //blue container and back vector
                  children: [
                    //blue container
                    container1.buildContainer(context),

                    //back vector
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.08,
                          left: 20),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: backVectorStyle),
                    )
                  ],
                ),
                //white container
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    container2.buildContainer(context),
                    Positioned(
                        bottom: 20,
                        left: (MediaQuery.of(context).size.width / 2) + 30,
                        child: TextButton(
                            onPressed: () {},
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, registerPsychologistPageRoute);
                                },
                                style: textButtonStyle2,
                                child: const Text('Hesap Aç'))))
                  ],
                )
              ],
            ),
            //logo
            Stack(
              children: [
                loginLogoContainer.buildContainer(context),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.2),
                    child: psychologLogoStyle,
                  ),
                )
              ],
            ),

            //input text ve button
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    60, MediaQuery.of(context).size.height * 0.4, 60, 0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 265,
                          height: 50,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: '    Email',
                                labelStyle: formTextStyle,
                                enabledBorder: formBorderStyle,
                                focusedBorder: formFocusBorderStyle),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 265,
                          height: 50,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: '    Şifre',
                                labelStyle: formTextStyle,
                                enabledBorder: formBorderStyle,
                                focusedBorder: formFocusBorderStyle),
                            textAlign: TextAlign.center,
                            obscureText: true,
                            obscuringCharacter: '*',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130),
                          child: TextButton(
                              onPressed: () {},
                              style: textButtonStyle,
                              child: const Text('Şifremi Unuttum')),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: 200,
                          height: 40,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: logRegButtonStyle,
                            child: const Text(
                              'Oturum Aç',
                              style: logRegTextStyle,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
