import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFD4BEE4),
    scaffoldBackgroundColor: Colors.white10,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFD4BEE4),
      foregroundColor: Colors.black26,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.pressStart2p(color: Colors.black, fontSize: 16),
      bodyMedium: GoogleFonts.pressStart2p(color: Colors.black54, fontSize: 14),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF9B7EBD),
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF3B1E54),
    scaffoldBackgroundColor: const Color(0xFF1E1E1E),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF3B1E54),
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.pressStart2p(color: Colors.white, fontSize: 16),
      bodyMedium: GoogleFonts.pressStart2p(color: Colors.white70, fontSize: 14),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF9B7EBD),
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
