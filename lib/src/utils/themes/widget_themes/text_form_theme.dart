import 'package:flutter/material.dart';

class PTextFormTheme {

  static InputDecorationTheme lightInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: Colors.black87,
    floatingLabelStyle: TextStyle(color: Colors.black87,),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black87),
    )
  );

  static InputDecorationTheme darkInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: Color(0xFFFFE200),
    floatingLabelStyle: TextStyle(color: Color(0xFFFFE200),),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFFFE200)),
    )
  );
}
