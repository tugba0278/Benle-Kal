import 'package:flutter/material.dart';

const splashTextStyle = TextStyle(
  color: Color(0xFF063B6C),
  fontSize: 18,
  fontWeight: FontWeight.w500,
  fontFamily: "Inter",
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
    fontFamily: "Inter",
    fontWeight: FontWeight.w400);

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
    fontFamily: "Inter",
    fontWeight: FontWeight.w400);

const formTextStyle = TextStyle(
    color: Color(0xFFC96868),
    fontSize: 18,
    fontFamily: "Inter",
    fontWeight: FontWeight.w400);

const formBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(color: Color(0xFFFF9B9B)));

const formFocusBorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide(color: Color(0xFFC96868)));

final backVectorStyle = Image.asset(
  'lib/assets/vector/back.png',
  height: 35,
  width: 35,
);
