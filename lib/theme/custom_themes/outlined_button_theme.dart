import 'package:flutter/material.dart';

class TOutlinedButtonTheme{
  // To avoid creating instances
  TOutlinedButtonTheme._();

  static final OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.black),
        textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      )
  );
  static final OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white),
        textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      )
  );

}