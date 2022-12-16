import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{

  static const Color lightBlue = Color(0xFFB6D5E1);
  static const Color boldBlue = Color(0xFF65799B);
  static const Color purple = Color(0xFF555273);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFE2EFF1),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.k2d(
        fontSize: 18,
            color: Colors.black,
          ),
        bodyMedium: GoogleFonts.juliusSansOne(
          fontSize: 16,
          color: purple,
          fontWeight: FontWeight.bold
        )
    )
  );
}