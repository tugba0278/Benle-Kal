import 'package:flutter/material.dart';
import 'package:psychology_app/auth-services/sign_up_service.dart';
import 'package:psychology_app/design-classes/container1.dart';
import 'package:psychology_app/design-classes/container2.dart';
import 'package:psychology_app/design-classes/login_logo_container.dart';
import 'package:psychology_app/functions/register_function.dart';
import 'package:psychology_app/routes.dart';
import 'package:psychology_app/styles.dart';

class RegisterStudentPage extends StatefulWidget {
  const RegisterStudentPage({super.key});

  @override
  State<RegisterStudentPage> createState() => _RegisterStudentPageState();
}

class _RegisterStudentPageState extends State<RegisterStudentPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController =
      TextEditingController(); //e-mailin girileceği text metnin kontrolünü sağlar.
  final TextEditingController _passwordController =
      TextEditingController(); //şifrenin girileceği text metnin kontrolünü sağlar.
  final TextEditingController _repPasswordController =
      TextEditingController(); //şifre tekrarı text metnin kontrolünü sağlar.
  SignUpService signUpService = SignUpService();

  @override
  void dispose() {
    _emailController.dispose(); // email objesi bellekten kaldırılır
    _passwordController.dispose(); //şifre objesi bellekten kaldırılır
    _repPasswordController.dispose(); //şifre tekrar objesi bellekten kaldırılır
    super.dispose(); //widget'ın tamamı bellekten kaldırılır
  }

  void _signUp() {
    RegisterHelper.register(
        context: context,
        emailController: _emailController,
        passwordController: _passwordController,
        repPasswordController: _repPasswordController,
        formKey: _formKey,
        signUpService: signUpService,
        routePath: studentHomePageRoute);
  }

  @override
  Widget build(BuildContext context) {
    Container1 container1 = Container1();
    Container2 container2 = Container2();
    LogoContainer registerLogoContainer =
        LogoContainer(imagePath: 'lib/assets/images/student-logo.png');

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
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
                              icon: backVectorStyle)),
                    ],
                  ),
                  //white container
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      container2.buildContainer(context),
                      Positioned(
                          bottom: 20,
                          left: (MediaQuery.of(context).size.width / 2) + 40,
                          child: TextButton(
                            onPressed: () {},
                            style: textButtonStyle2,
                            child: const Text('Okul maili ile kaydol'),
                          ))
                    ],
                  ),
                ],
              ),
              //logo container
              registerLogoContainer.buildContainer(context),

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
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  labelText: '   Email',
                                  labelStyle: formTextStyle,
                                  enabledBorder: formBorderStyle,
                                  focusedBorder: formFocusBorderStyle),
                              textAlign: TextAlign.center,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Email adresinizi giriniz';
                                } else if (!value.contains('@')) {
                                  return 'Geçerli bir e-posta giriniz.';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 265,
                            height: 50,
                            child: TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                  labelText: '   Şifre',
                                  labelStyle: formTextStyle,
                                  enabledBorder: formBorderStyle,
                                  focusedBorder: formFocusBorderStyle),
                              textAlign: TextAlign.center,
                              obscureText: true,
                              obscuringCharacter: '*',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Şifrenizi giriniz';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 265,
                            height: 50,
                            child: TextFormField(
                              controller: _repPasswordController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                  labelText: '   Şifre Tekrarı',
                                  labelStyle: formTextStyle,
                                  enabledBorder: formBorderStyle,
                                  focusedBorder: formFocusBorderStyle),
                              textAlign: TextAlign.center,
                              obscureText: true,
                              obscuringCharacter: '*',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Şifre giriniz';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            width: 200,
                            height: 40,
                            child: OutlinedButton(
                                onPressed: _signUp,
                                style: logRegButtonStyle,
                                child: const Text(
                                  'Kaydol',
                                  style: logRegTextStyle,
                                )),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
