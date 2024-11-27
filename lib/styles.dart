import 'package:flutter/material.dart';

const fontFamily = "Inter";
const fontWeightRegular = FontWeight.w400;
const fontWeightMedium = FontWeight.w500;
const fontWeightBold = FontWeight.w800;

const splashTextColor = Color(0xFF063B6C);
const startBgColor = Color(0xFF0D5E93);
const optionsButtonBgColor = Color(0xFFF3D1DB);
const optionsButtonTapColor = Color(0xFFE1ACAC);
const borderColor = Color(0XFFFF9B9B);
const focusBorderColor = Color.fromARGB(255, 255, 183, 183);
const formTextColor = Color(0xFFC96868);
const blackColor = Color(0xFF000000);
const whiteColor = Color(0xFFFFFFFF);
const textButtonColor = Color.fromRGBO(201, 104, 104, 52);
const titleColor = Color(0xFF798998);
const bgColor = Color(0xFF063B6C);

const splashTextStyle = TextStyle(
  color: splashTextColor,
  fontSize: 18,
  fontWeight: FontWeight.w500,
  fontFamily: fontFamily,
);

final curvedArrowStyle = Image.asset(
  'lib/assets/images/curved-arrow.png',
  width: 60,
  height: 60,
);

var optionsButtonStyle = OutlinedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  overlayColor: optionsButtonTapColor,
  backgroundColor: optionsButtonBgColor,
  side: const BorderSide(
    color: blackColor, // Kenarlık rengini siyah yap
    width: 1.3, // Kenarlık kalınlığı (isteğe bağlı)
  ),
);

const optionsTextStyle = TextStyle(
    color: blackColor,
    fontSize: 18,
    fontFamily: fontFamily,
    fontWeight: fontWeightRegular);

final psyImageStyle = Image.asset(
  'lib/assets/images/psychologist.png',
  width: 40,
  height: 40,
);

final studentImageStyle = Image.asset(
  'lib/assets/images/student.png',
  width: 40,
  height: 40,
);

var logRegButtonStyle = OutlinedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
  backgroundColor: blackColor,
);

const logRegTextStyle = TextStyle(
    color: whiteColor,
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: fontWeightRegular);

var textButtonStyle = TextButton.styleFrom(
    textStyle: const TextStyle(
      color: blackColor,
      fontSize: 15,
      fontFamily: fontFamily,
      fontWeight: fontWeightRegular,
    ),
    foregroundColor: blackColor);

var textButtonStyle2 = TextButton.styleFrom(
    textStyle: const TextStyle(
      //color: Color(0xFFC96868),
      fontSize: 15,
      fontFamily: fontFamily,
      fontWeight: fontWeightRegular,
    ),
    foregroundColor: textButtonColor);

var errorTextButtonStyle = OutlinedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  backgroundColor: bgColor,
);

const errorTextStyle = TextStyle(
    color: whiteColor,
    fontSize: 14,
    fontFamily: fontFamily,
    fontWeight: fontWeightRegular);

const formTextStyle = TextStyle(
    color: formTextColor,
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: fontWeightRegular);

const formBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(color: borderColor, width: 1));

const formFocusBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(color: focusBorderColor, width: 1));

const gridTextStyle = TextStyle(
    color: whiteColor,
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: fontWeightRegular);

const titleTextStyle = TextStyle(
    shadows: [Shadow(offset: Offset(0, 0), color: titleColor, blurRadius: 9)],
    color: whiteColor,
    fontSize: 20,
    fontFamily: fontFamily,
    fontWeight: fontWeightBold);

const drawerTextStyle = TextStyle(
    color: blackColor,
    fontSize: 19,
    fontFamily: fontFamily,
    fontWeight: fontWeightMedium);

const aboutTextStyle = TextStyle(
    color: blackColor,
    fontSize: 18,
    fontFamily: fontFamily,
    fontWeight: fontWeightRegular);

final backVectorStyle = Image.asset(
  'lib/assets/vector/back.png',
  height: 30,
  width: 30,
);

final psychologLogoStyle = Image.asset(
  'lib/assets/images/psycholog-logo.png',
  height: 85,
  width: 85,
);

final homeMenuVectorStyle = Image.asset(
  'lib/assets/vector/menu-symbol.png',
  height: 40,
  width: 40,
);

final menuVectorStyle = Image.asset(
  'lib/assets/images/menu-vector.png',
  width: 40,
  height: 40,
);

final homeIcon = Image.asset(
  'lib/assets/images/home-icon.png',
  height: 25,
  width: 25,
);

final logoutIcon = Image.asset(
  'lib/assets/images/logout.png',
  width: 25,
  height: 25,
);

final aboutPageImage = Image.asset(
  'lib/assets/images/about-image.png',
  width: 220,
  height: 220,
);
