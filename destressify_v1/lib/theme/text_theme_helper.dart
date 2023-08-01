import 'package:flutter/material.dart';
import '../core/app_export.dart';

class TextThemeHelper {
  static get titleSmallRalewayPrimary =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargePoppinsBlack900 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get bodySmallPoppinsGray500 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray500,
        fontSize: getFontSize(
          10,
        ),
      );
  static get titleLargeRalewayPrimary =>
      theme.textTheme.titleLarge!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get bodySmallRobotoErrorContainer =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter;
  static get titleMediumPoppinsBluegray90002 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray90002,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsBluegray90001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsGray900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRalewayBluegray90002 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.blueGray90002,
      );
  static get titleLargeRalewayPrimaryMedium =>
      theme.textTheme.titleLarge!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          22,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumIndigoA200 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigoA200,
      );
  static get titleMediumPoppinsBluegray9000116 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray90001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodySmallPoppinsOnPrimary =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodyLargePoppinsBluegray9000116 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.blueGray90001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodyLargePoppinsBluegray90001 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          16,
        ),
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          12,
        ),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }
}
