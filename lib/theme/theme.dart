import 'package:flutter/material.dart';


const bluePrimaryColor = const Color(0xFF1565c0);
const bluePrimaryColorLight = const Color(0xFF5e92f3);
const bluePrimaryColorDark = const Color(0xFF003c8f);

const greySecondaryColor = const Color(0xFFbdbdbd);
const greySecondaryColorLight = const Color(0xFFefefef);
const greySecondaryColorDark = const Color(0xFF8d8d8d);

class CVColors {
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

