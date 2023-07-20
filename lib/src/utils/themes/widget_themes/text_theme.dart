import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTheme = TextTheme(
    titleSmall: GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 20,
    ),
    headlineLarge: GoogleFonts.poppins(
      color: Colors.black87,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.black87,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: Colors.black87,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: GoogleFonts.poppins(
      color: Colors.black87,
      fontSize: 15,
    ),
    displaySmall: GoogleFonts.poppins(
      color: Colors.black87,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );

  static TextTheme darkTheme = TextTheme(
    titleSmall: GoogleFonts.poppins(
      color: Colors.white70,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: GoogleFonts.montserrat(
      color: Colors.white70,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  );
}
