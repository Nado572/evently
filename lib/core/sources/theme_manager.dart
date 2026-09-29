import 'package:evently/core/sources/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: ColorsManager.whiteF4,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.darkBlue,
            foregroundColor: ColorsManager.white,
            padding: EdgeInsets.symmetric(horizontal: 9),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
            
            textStyle: TextStyle(
              color: ColorsManager.white,fontSize: 20,fontWeight: FontWeight.w500


            )
      )
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: ColorsManager.darkGrey, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: ColorsManager.darkGrey, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.red, width: 1),
      ),
        prefixIconColor: ColorsManager.darkGrey,
        hintStyle: TextStyle(fontSize: 14,color: ColorsManager.darkGrey,fontWeight: FontWeight.normal),

    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: ColorsManager.darkBlue,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorsManager.darkGrey,
        

      ),
      bodyMedium: GoogleFonts.poppins(decoration: TextDecoration.underline,fontSize: 14,fontWeight: FontWeight.w500,color: ColorsManager.darkBlue)
    ),
  );
  static final ThemeData dark = ThemeData();
}
