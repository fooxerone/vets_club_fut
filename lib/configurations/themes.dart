import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{

  static const Color lightBlue = Color(0xFFB6D5E1);
  static const Color boldBlue = Color(0xFF65799B);
  static const Color purple = Color(0xFF555273);

  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: purple,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.juliusSansOne(
        fontSize: 24.sp,
        color: Colors.white
      ),
      iconTheme: IconThemeData(
        color: Colors.white,

      )
    ),
    scaffoldBackgroundColor: Color(0xFFE2EFF1),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.k2d(
        fontSize: 18.sp,
            color: Colors.black,
          ),
        bodyMedium: GoogleFonts.juliusSansOne(
          fontSize: 16.sp,
          color: purple,
          fontWeight: FontWeight.bold
        ),
        headlineSmall: GoogleFonts.juliusSansOne(
          fontSize: 13.sp,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
        titleLarge: GoogleFonts.juliusSansOne(
            fontSize: 32.sp, color: purple, fontWeight: FontWeight.normal),
        bodyLarge: GoogleFonts.juliusSansOne(
            fontSize: 24.sp, color: purple, fontWeight: FontWeight.bold)),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: lightBlue,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30).w,
        borderSide: BorderSide(
          color: boldBlue,
          width: 1
        )
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showUnselectedLabels: false,
        showSelectedLabels: false,
      backgroundColor: Colors.transparent,
      elevation: 0
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: MyTheme.purple,
      shape: CircularNotchedRectangle(),
    )
  );
}