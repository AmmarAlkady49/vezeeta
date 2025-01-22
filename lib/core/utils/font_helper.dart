import 'package:flutter/material.dart';

class FontHelper {
  static TextStyle myFont(
      {required double fontSize,
      required FontWeight fontWeight,
      required Color color}) {
    return TextStyle(
      fontFamily: 'poppins',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
