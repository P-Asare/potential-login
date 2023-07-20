import 'package:flutter/material.dart';

class PElevatedButtonTheme {
  PElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: Colors.white,
      backgroundColor: Colors.black87,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: Colors.black87,
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
    ),
  );
}
