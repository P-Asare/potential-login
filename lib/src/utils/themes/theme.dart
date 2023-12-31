import 'package:flutter/material.dart';
import 'package:login_app/src/utils/themes/widget_themes/elevated_button_theme.dart';
import 'package:login_app/src/utils/themes/widget_themes/outlined_button_theme.dart';
import 'package:login_app/src/utils/themes/widget_themes/text_form_theme.dart';
import 'package:login_app/src/utils/themes/widget_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: AppTextTheme.lightTheme,
      primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
        50: Color(0x1AFFE200),
        100: Color(0x33FFE200),
        200: Color(0x4DFFE200),
        300: Color(0x66FFE200),
        400: Color(0x80FFE200),
        500: Color(0xFFFFE200),
        600: Color(0x99FFE200),
        700: Color(0xB3FFE200),
        800: Color(0xCCFFE200),
        900: Color(0xE6FFE200),
      }),
      elevatedButtonTheme: PElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: POutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: PTextFormTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTheme,
    primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
      50: Color(0x1AFFE200),
      100: Color(0x33FFE200),
      200: Color(0x4DFFE200),
      300: Color(0x66FFE200),
      400: Color(0x80FFE200),
      500: Color(0xFFFFE200),
      600: Color(0x99FFE200),
      700: Color(0xB3FFE200),
      800: Color(0xCCFFE200),
      900: Color(0xE6FFE200),
    }),
    elevatedButtonTheme: PElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: POutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: PTextFormTheme.darkInputDecorationTheme,
  );
}
