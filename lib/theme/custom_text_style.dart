import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.63),
      );
  static get bodyLargeInder => theme.textTheme.bodyLarge!.inder;
  static get bodyLargeIndigo500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo500,
      );
  static get bodyLargeLato => theme.textTheme.bodyLarge!.lato;
  static get bodyLargeLatoBluegray900 =>
      theme.textTheme.bodyLarge!.lato.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeLatoGray90002 => theme.textTheme.bodyLarge!.lato.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
      );
  static get bodyLargeLatoWhiteA700 => theme.textTheme.bodyLarge!.lato.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeLibreBarcode39Extended =>
      theme.textTheme.bodyLarge!.libreBarcode39Extended.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeLightgreen200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightGreen200,
      );
  static get bodyLargeRedA200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.redA200,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumInder => theme.textTheme.bodyMedium!.inder.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900,
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
  static get bodyMediumLaoSansProBluegray900 =>
      theme.textTheme.bodyMedium!.laoSansPro.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumLibreBarcode39Extended =>
      theme.textTheme.bodyMedium!.libreBarcode39Extended.copyWith(
        fontSize: 14.fSize,
      );
  static get bodySmallBlack90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001.withOpacity(0.51),
        fontSize: 8.fSize,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.53),
        fontSize: 10.fSize,
      );
  static get bodySmallInterBlack90001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallInterBluegray200 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallInterBluegray500 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray500,
      );
  // Headline text style
  static get headlineLargeInterBlack90001 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.black90001,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInknutAntiqua =>
      theme.textTheme.titleLarge!.inknutAntiqua.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeLaoSansPro => theme.textTheme.titleLarge!.laoSansPro;
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
  static get titleLargeTeal20001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal20001,
      );
  static get titleLargeTeal20001Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal20001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumLato => theme.textTheme.titleMedium!.lato;
  static get titleMediumLatoBluegray900 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumLatoWhiteA700 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLatoGray90002 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.gray90002,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
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

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inder {
    return copyWith(
      fontFamily: 'Inder',
    );
  }

  TextStyle get laoSansPro {
    return copyWith(
      fontFamily: 'Lao Sans Pro',
    );
  }

  TextStyle get inknutAntiqua {
    return copyWith(
      fontFamily: 'Inknut Antiqua',
    );
  }
}
