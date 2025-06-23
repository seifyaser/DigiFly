import 'package:flutter/material.dart';

class Apptheme {
  static const Color primaryColor = Color(0xff46BC8A);
  static const Color secondaryColor = Color(0xffC50030);
  static const Color textColorPrimary = Colors.black;
  static const Color textColorsecondary = Colors.white;
  static const Color Textcolortertiary = Color(0xff1A1A1A);


  static const String fontFamily = 'Cairo';

  static const TextStyle heading = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600, // SemiBold
    color: textColorPrimary,
  );

 static const TextStyle heading2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600, // SemiBold
    color: Color(0xff808080),
  );

 static const TextStyle heading3 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold
    color: Color(0xff1A1A1A),
  );

  static const TextStyle body = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w300, // Regular
    color: textColorPrimary,
  );

  static const TextStyle buttonBoldprimary = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700, // Bold
    color: textColorPrimary,
  );

   static const TextStyle TextBoldtertiary = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700, // Bold
    color: Textcolortertiary,
  );

 static const TextStyle TextBold4 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700, // Bold
    color: primaryColor,
  );

static const TextStyle buttonBoldsecondary = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700, // Bold
    color: textColorsecondary,
  );

  static const TextStyle caption1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400, // Medium
    color: Color.fromARGB(255, 0, 0, 0),
  );

   static const TextStyle caption2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400, // Medium
    color: Color.fromARGB(255, 0, 0, 0),
  );
}
