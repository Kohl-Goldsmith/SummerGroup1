// ignore_for_file: unnecessary_import

import 'dart:ui';
import 'package:destressify/core/app_export.dart';
import 'package:flutter/material.dart';

class ButtonThemeHelper {
  static ButtonStyle get fillIndigoA200 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigoA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            29,
          ),
        ),
      );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            29,
          ),
        ),
      );
  static ButtonStyle get outlineGray200 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.indigoA200,
        side: BorderSide(
          color: appTheme.gray200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(),
      );
  static ButtonStyle get outlineGray200TL14 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: appTheme.gray200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            14,
          ),
        ),
      );
  static ButtonStyle get fillIndigoA200TL17 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigoA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            17,
          ),
        ),
      );
  static ButtonStyle get outlineBlack900 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        shadowColor: appTheme.black900.withOpacity(0.06),
        elevation: 4,
      );
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
