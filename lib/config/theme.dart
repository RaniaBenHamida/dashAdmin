import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme(
      primary: Color.fromARGB(255, 254, 173, 60),
      //primaryVariant: Color(0xFFFE3C5B),
      secondary: Color.fromARGB(255, 214, 135, 44),
      //secondaryVariant: Color(0xFFe84545),
      background: Color.fromARGB(255, 250, 199, 140),
      surface: Color.fromARGB(255, 233, 142, 56),
      error: Color(0xFFFFFFFF),
      brightness: Brightness.light,
      onPrimary: Color.fromARGB(255, 250, 199, 140),
      onSecondary: Color.fromARGB(255, 250, 199, 140),
      onError: Color(0xFF2b2e4a),
      onBackground: Color(0xFF2b2e4a),
      onSurface: Color(0xFF2b2e4a),
    ),
    fontFamily: 'Futura',
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      headline2: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headline3: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headline4: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headline5: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      headline6: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      bodyText1: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      bodyText2: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.normal,
        fontSize: 10,
      ),
    ),
  );
}
