// Flutter imports:
import 'package:flutter/material.dart';

class Pallete {
  const Pallete({
    required this.light,
    required this.normal,
    required this.dark,
  });
  final Color light;
  final Color normal;
  final Color dark;
}

abstract class ColorThemes {
  static Color get pink => const Color(0xffF8306C);
  static Color get green => const Color(0xff00C5AD);
  static Color get gradientGreen => const Color(0xff00D7A3);
  static Color get primary => const Color(0xff2E2E51);
  static Color get secondary => const Color(0xff9393AA);
  static Color get light => const Color.fromRGBO(233, 234, 234, 1);
  static Color get lightGreen => const Color(0xffE6F8F6);
  static Color get shadowGreen => const Color.fromRGBO(212, 240, 230, 1);
  static Color get darkGrey => const Color.fromRGBO(90, 90, 90, 1);
  static Color get grey => const Color(0xff9393AA);
  static Color get lightGrey => const Color(0xffF4F5F5);
  static Color get selectedGreen => const Color(0xFFD3F0E6);
  static Color get lightGold => const Color(0xFFFFC700);
  static Color get starGold => const Color(0xFFFFC703);
  static Color get lightBlue => const Color(0xFF00C5AD);
  static Color get gradientButtonOrange => const Color(0xFFFF716B);
  static Color get secondaryWithOpacity => const Color(0xFFDFDFE6);
  
}

extension ColorExtension on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  bool get isDark {
    final hsl = HSLColor.fromColor(this);
    return hsl.lightness < .5;
  }
}
