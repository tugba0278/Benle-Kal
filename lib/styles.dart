import 'package:flutter/material.dart';

const fontFamily = "Inter";
const fontWeightRegular = FontWeight.w400;
const fontWeightBold = FontWeight.w800;

const splashTextStyle = TextStyle(
  color: Color(0xFF063B6C),
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
  overlayColor: const Color(0xFFE1ACAC),
  backgroundColor: const Color(0xFFF3D1DB),
  side: const BorderSide(
    color: Colors.black, // Kenarlık rengini siyah yap
    width: 1.3, // Kenarlık kalınlığı (isteğe bağlı)
  ),
);

const optionsTextStyle = TextStyle(
    color: Color(0xFF000000),
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
  backgroundColor: Colors.black,
);

const logRegTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: fontWeightRegular);

var textButtonStyle = TextButton.styleFrom(
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontFamily: fontFamily,
      fontWeight: fontWeightRegular,
    ),
    foregroundColor: Colors.black);

var textButtonStyle2 = TextButton.styleFrom(
    textStyle: const TextStyle(
      //color: Color(0xFFC96868),
      fontSize: 15,
      fontFamily: fontFamily,
      fontWeight: fontWeightRegular,
    ),
    foregroundColor: const Color.fromRGBO(201, 104, 104, 52));

var errorTextButtonStyle = OutlinedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  backgroundColor: const Color(0xFF063B6C),
);

const errorTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: fontFamily,
    fontWeight: fontWeightRegular);

const formTextStyle = TextStyle(
    color: Color(0xFFC96868),
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: fontWeightRegular);

const formBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(color: Color(0XFFFF9B9B), width: 1));

const formFocusBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide:
        BorderSide(color: Color.fromARGB(255, 255, 183, 183), width: 1));

const gridTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: fontWeightRegular);

const titleTextStyle = TextStyle(
    shadows: [
      Shadow(offset: Offset(0, 0), color: Color(0xFF798998), blurRadius: 9)
    ],
    color: Colors.white,
    fontSize: 20,
    fontFamily: fontFamily,
    fontWeight: fontWeightBold);

final backVectorStyle = Image.asset(
  'lib/assets/vector/back.png',
  height: 35,
  width: 35,
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
