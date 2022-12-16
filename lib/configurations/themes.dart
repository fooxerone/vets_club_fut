import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{

  static const Color lightBlue = Color(0xFFB6D5E1);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: lightBlue,
    textTheme: TextTheme(
      bodySmall: GoogleFonts.k2d(
        fontSize: 16,
        color: Colors.black,
      )
    )
  );
}