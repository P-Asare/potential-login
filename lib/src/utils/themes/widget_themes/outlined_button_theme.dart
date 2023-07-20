import 'package:flutter/material.dart';

class POutlinedButtonTheme {
  POutlinedButtonTheme._();

  /* Light Theme */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
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
      shape: const RoundedRectangleBorder(),
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
