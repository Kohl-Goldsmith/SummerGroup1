// ignore_for_file: unnecessary_import

import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.indigoA200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              29,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: colorScheme.primary,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              29,
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            32,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray900,
          fontSize: getFontSize(
            8,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            26,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.blueGray200,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            46,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    onPrimary: Color(0XFF2C2F30),
    shadow: Color(0XFF2C2F30),
    onPrimaryContainer: Color(0X7FFFFFFF),
    onTertiary: Color(0X7FFFFFFF),
    scrim: Color(0XFF3444D5),
    primaryContainer: Color(0XFF3444D5),
    tertiaryContainer: Color(0X7FFFFFFF),
    secondaryContainer: Color(0X7FFFFFFF),
    error: Color(0XFF2C2F30),
    onErrorContainer: Color(0X00080FF3),
    outline: Color(0XFF2C2F30),
    onSurfaceVariant: Color(0XFF2C2F30),
    onBackground: Color(0X7FFFFFFF),
    outlineVariant: Color(0XFF3444D5),
    errorContainer: Color(0XFFA3A3A3),
    onSurface: Color(0X7FFFFFFF),
    onError: Color(0X7FFFFFFF),
    surface: Color(0XFF3444D5),
    onInverseSurface: Color(0X7FFFFFFF),
    onSecondaryContainer: Color(0XFF2C2F30),
    tertiary: Color(0XFF3444D5),
    surfaceTint: Color(0XFF2C2F30),
    onTertiaryContainer: Color(0XFF2C2F30),
    surfaceVariant: Color(0X7FFFFFFF),
    inversePrimary: Color(0XFF3444D5),
    secondary: Color(0XFF3444D5),
    inverseSurface: Color(0XFF2C2F30),
    background: Color(0XFF3444D5),
    onSecondary: Color(0X7FFFFFFF),
    primary: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  Color get primaryVariant => Color(0XFF3444D5);
  Color get secondaryVariant => Color(0X7FFFFFFF);
  Color get indigoA200 => Color(0XFF6266EA);
  Color get gray500 => Color(0XFF9696A4);
  Color get gray200 => Color(0XFFEAEBEC);
  Color get blueGray900 => Color(0XFF333333);
  Color get blueGray90001 => Color(0XFF29292D);
  Color get gray20001 => Color(0XFFEFEFEF);
  Color get deepPurpleA200 => Color(0XFF9B51F9);
  Color get pink100 => Color(0XFFFCADDF);
  Color get blueGray90002 => Color(0XFF333339);
  Color get gray900 => Color(0XFF252C28);
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get purple100 => Color(0XFFE3A6D9);
  Color get blueGray200 => Color(0XFFACAAB5);
  Color get gray20002 => Color(0XFFF0F0F0);
  Color get blueGray400 => Color(0XFF888888);
  Color get gray50001 => Color(0XFF979797);
  Color get black900 => Color(0XFF000000);
  Color get gray100 => Color(0XFFF2F2F2);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
