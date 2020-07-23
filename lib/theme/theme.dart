import 'package:flutter/material.dart';

class CVColors {
  static Color bluePrimaryColor = Color(0xFF1565c0);
  static Color bluePrimaryColorLight = Color(0xFF5e92f3);
  static Color bluePrimaryColorDark = Color(0xFF003c8f);

  static Color greySecondaryColor = Color(0xFFbdbdbd);
  static Color greySecondaryColorLight = Color(0xFFefefef);
  static Color greySecondaryColorDark = Color(0xFF8d8d8d);

  static final ThemeData defaultTheme = _buildTheme();

  static ThemeData _buildTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      accentColor: greySecondaryColor,
      accentColorBrightness: Brightness.dark,
      primaryColor: bluePrimaryColor,
      primaryColorDark: bluePrimaryColorDark,
      primaryColorLight: bluePrimaryColorLight,
      primaryColorBrightness: Brightness.dark,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: greySecondaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      textSelectionColor: bluePrimaryColorLight,
    );
  }
}
