import 'package:flutter/material.dart';

class POutlinedButtonTheme {
  POutlinedButtonTheme._();

  /* Light Theme */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      foregroundColor: Colors.black87,
      side: const BorderSide(
        color: Colors.black87,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
    ),
  );

  /* Dark Theme */

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      foregroundColor: Colors.white,
      side: const BorderSide(
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
    ),
  );
}
