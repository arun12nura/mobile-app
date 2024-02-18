import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90002.withOpacity(0.63),
      );
  static get bodyLargeBlack90002_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get bodyLargeLatoGray90002 => theme.textTheme.bodyLarge!.lato.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
      );
  static get bodyLargeLightgreen200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightGreen200,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumInterBlack90001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterBlack90002 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black90002,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterGray90003 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray90003,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterWhiteA700 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterWhiteA70014 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
        fontSize: 14.fSize,
      );
  static get bodyMediumLibreBarcode39ExtendedBlack90002 =>
      theme.textTheme.bodyMedium!.libreBarcode39Extended.copyWith(
        color: appTheme.black90002,
        fontSize: 14.fSize,
      );
  static get bodyMediumff262626 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF262626),
      );
  // Display text style
  static get displaySmallInter => theme.textTheme.displaySmall!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeInterBlack90002 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.black90002,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeInterTeal400 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.teal400,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInknutAntiqua =>
      theme.textTheme.titleLarge!.inknutAntiqua.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMedium22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRedA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get libreBarcode39Extended {
    return copyWith(
      fontFamily: 'Libre Barcode 39 Extended',
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

  TextStyle get inknutAntiqua {
    return copyWith(
      fontFamily: 'Inknut Antiqua',
    );
  }
}
