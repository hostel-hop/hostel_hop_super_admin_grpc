// Flutter imports:
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
// Package imports:
import 'package:google_fonts/google_fonts.dart';
import 'package:hostel_hop_super_admin/src/shared/theme/color_themes.dart';

// Project imports:

abstract class TextThemes {
  static String get fontFamily => GoogleFonts.redHatDisplay().fontFamily ?? '';

  ///font family: Eveleth
  static _ITextTheme get logo => _CTextTheme();

  ///color: light grey
  static _ITextTheme get lightGrey =>
      _CTextTheme(color: ColorThemes.grey.lighten(.2));

  ///color: grey
  static _ITextTheme get grey => _CTextTheme(color: ColorThemes.grey);

  ///color: dark grey
  static _ITextTheme get darkGrey => _CTextTheme(color: ColorThemes.darkGrey);

  ///color: primaryText
  static _ITextTheme get primary => _CTextTheme(color: ColorThemes.primary);

  ///color: secondary
  static _ITextTheme get secondary => _CTextTheme(color: ColorThemes.secondary);

  ///color: light
  static _ITextTheme get light => _CTextTheme(color: ColorThemes.light);

  ///color: pink
  static _ITextTheme get pink => _CTextTheme(color: ColorThemes.pink);

  ///color: white
  static _ITextTheme get white => _CTextTheme(color: Colors.white);

  ///color: cream
  static _ITextTheme get green => _CTextTheme(color: ColorThemes.green);

  ///color: error
  static _ITextTheme get error => _CTextTheme(color: Colors.red.lighten(.2));

  static _ITextTheme get secondaryWithOpacity =>
      _CTextTheme(color: ColorThemes.secondaryWithOpacity);
}

abstract class _ITextTheme {
  TextStyle get headlineLarge;

  TextStyle get headlineMedium;

  TextStyle get headlineSmall;

  TextStyle get titleLarge;

  TextStyle get titleMedium;

  TextStyle get titleSmall;

  TextStyle get bodyLarge;

  TextStyle get bodyMedium;

  TextStyle get bodySmall;

  TextStyle get labelLarge;

  TextStyle get labelMedium;

  TextStyle get labelSmall;

  TextStyle get bodyMediumBold;

  TextStyle get headerLarge;
}

class _CTextTheme implements _ITextTheme {
  _CTextTheme._(
      this._headlineLarge,
      this._headlineMedium,
      this._headlineSmall,
      this._titleLarge,
      this._titleMedium,
      this._titleSmall,
      this._bodyLarge,
      this._bodyMedium,
      this._bodySmall,
      this._labelLarge,
      this._labelMedium,
      this._bodyMediumBold,
      this._headerLarge,
      this._labelSmall);

  factory _CTextTheme({Color? color, FontWeight? fontWeight}) {
    final headlineLarge = GoogleFonts.lexendDeca(
      fontWeight: fontWeight ?? FontWeight.w700,
      color: ColorThemes.primary,
      fontSize: 32,
      letterSpacing: -1.92,
    );

    final headlineMedium = GoogleFonts.lexendDeca(
      fontWeight: fontWeight ?? FontWeight.w700,
      fontSize: 28,
      color: color ?? ColorThemes.primary,
      letterSpacing: -1.68,
    );

    final headlineSmall = GoogleFonts.lexendDeca(
      fontWeight: fontWeight ?? FontWeight.w700,
      fontSize: 24,
      color: color ?? ColorThemes.primary,
      letterSpacing: -1.44,
    );

    final titleLarge = GoogleFonts.lexendDeca(
      fontWeight: fontWeight ?? FontWeight.w700,
      fontSize: 22,
      color: color ?? ColorThemes.primary,
      letterSpacing: -.88,
    );

    final titleMedium = GoogleFonts.lexendDeca(
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? ColorThemes.primary,
      fontSize: 16,
      letterSpacing: -.64,
    );

    final titleSmall = GoogleFonts.lexendDeca(
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? ColorThemes.primary,
      fontSize: 14,
      letterSpacing: -.56,
    );
    final bodyMediumBold = GoogleFonts.redHatDisplay(
      fontWeight: FontWeight.w700,
      color: color ?? ColorThemes.primary,
      fontSize: 15,
      letterSpacing: -.15,
    );

    final bodyLarge = GoogleFonts.redHatDisplay(
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? ColorThemes.primary,
      fontSize: 18,
      letterSpacing: -.18,
    );

    final bodyMedium = GoogleFonts.redHatDisplay(
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? ColorThemes.primary,
      fontSize: 15,
      letterSpacing: -.15,
    );

    final bodySmall = GoogleFonts.redHatDisplay(
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? ColorThemes.primary,
      fontSize: 12,
      letterSpacing: -.12,
    );
    final labelLarge = GoogleFonts.redHatDisplay(
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? ColorThemes.primary,
      fontSize: 14,
      letterSpacing: -.14,
    );
    final labelMedium = GoogleFonts.redHatDisplay(
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? ColorThemes.primary,
      fontSize: 12,
      letterSpacing: -.12,
    );
    final labelSmall = GoogleFonts.redHatDisplay(
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? ColorThemes.primary,
      fontSize: 11,
      letterSpacing: -.11,
    );
    final headerLarge = GoogleFonts.lexendDeca(
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? ColorThemes.primary,
      fontSize: 40,
      letterSpacing: -.06,
    );

    return _CTextTheme._(
        headlineLarge,
        headlineMedium,
        headlineSmall,
        titleLarge,
        titleMedium,
        titleSmall,
        bodyLarge,
        bodyMedium,
        bodySmall,
        labelLarge,
        labelMedium,
        labelSmall,
        bodyMediumBold,
        headerLarge);
  }

  final TextStyle _headlineLarge;
  final TextStyle _headlineMedium;
  final TextStyle _headlineSmall;
  final TextStyle _titleLarge;
  final TextStyle _titleMedium;
  final TextStyle _titleSmall;
  final TextStyle _bodyLarge;
  final TextStyle _bodyMedium;
  final TextStyle _bodySmall;
  final TextStyle _labelLarge;
  final TextStyle _labelMedium;
  final TextStyle _labelSmall;
  final TextStyle _bodyMediumBold;
  final TextStyle _headerLarge;

  @override
  TextStyle get headlineLarge => _headlineLarge;

  @override
  TextStyle get headlineMedium => _headlineMedium;

  @override
  TextStyle get headlineSmall => _headlineSmall;

  @override
  TextStyle get titleLarge => _titleLarge;

  @override
  TextStyle get titleMedium => _titleMedium;

  @override
  TextStyle get titleSmall => _titleSmall;

  @override
  TextStyle get bodyLarge => _bodyLarge;

  @override
  TextStyle get bodyMedium => _bodyMedium;

  @override
  TextStyle get bodySmall => _bodySmall;

  @override
  TextStyle get labelLarge => _labelLarge;

  @override
  TextStyle get labelMedium => _labelMedium;

  @override
  TextStyle get labelSmall => _labelSmall;

  @override
  TextStyle get bodyMediumBold => _bodyMediumBold;

  @override
  TextStyle get headerLarge => _headerLarge;
}
