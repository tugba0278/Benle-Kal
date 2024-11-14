import 'package:flutter/material.dart';
import 'package:psychology_app/classes/container1.dart';
import 'package:psychology_app/classes/container2.dart';
import 'package:psychology_app/classes/login_logo_container.dart';
import 'package:psychology_app/styles.dart';

class RegisterPsychologistPage extends StatefulWidget {
  const RegisterPsychologistPage({super.key});

  @override
  State<RegisterPsychologistPage> createState() =>
      _RegisterPsychologistPageState();
}

class _RegisterPsychologistPageState extends State<RegisterPsychologistPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController =
      TextEditingController(); //email input texti kontrol eder.
  final TextEditingController _passwordController =
      TextEditingController(); //şifre input texti kontrol eder.
  final TextEditingController _repPasswordController =
      TextEditingController(); //şifre tekrarı input texti kontrol eder.

  @override
  void dispose() {
    _emailController.dispose(); //email objesi bellekten kaldırılır
    _passwordController.dispose(); //şifre objesi bellekten kaldırılır
    _repPasswordController.dispose(); //şifre tekrar objesi bellekten kaldırılır
    super.dispose(); //widget'ın tamamı bellekten kaldırılır
  }

  @override
  Widget build(BuildContext context) {
    Container1 container1 = Container1();
    Container2 container2 = Container2();
    LogoContainer registerLogoContainer = LogoContainer(
        imagePath: 'lib/assets/images/psycholog-logo-ellipse.png');

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(
          children: [
            Column(
              children: [
                //blue container and back vector
                Stack(
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
                container2.buildContainer(context),
              ],
            ),
            //logo
            Stack(
              children: [
                registerLogoContainer.buildContainer(context),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 265,
                          height: 50,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: '     Email',
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
                                labelText: '     Şifre',
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
                                labelText: '     Şifre Tekrarı',
                                labelStyle: formTextStyle,
                                enabledBorder: formBorderStyle,
                                focusedBorder: formFocusBorderStyle),
                            textAlign: TextAlign.center,
                          ),
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
                              'Kaydol',
                              style: logRegTextStyle,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
