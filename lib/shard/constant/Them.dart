import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class them {
  static ThemeData customDarkThem = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color.fromRGBO(69, 85, 85, 10),
    inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Color.fromRGBO(69, 85, 85, 10),
        border: OutlineInputBorder(
            //  borderSide: BorderSide(color: Colors.white, width: 2)
            )),
  );
  static ThemeData customlightThem = ThemeData(
    scaffoldBackgroundColor: const Color.fromRGBO(230, 246, 246, 1),
    inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderSide: BorderSide.none)),
  );
}
