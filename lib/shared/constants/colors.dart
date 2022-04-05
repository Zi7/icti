import 'package:flutter/material.dart';

class ColorConstants {
  static const Color colorD8D8D8 = Color(0xFFD8D8D8);
  static const Color color373A36 = Color(0xFF373A36);
  static const Color colorFFA400 = Color(0xFFFFA400);
  static const Color color9B9B9B = Color(0xFF9B9B9B);
  static const Color colorFE640A = Color(0xFFFE640A);
  static const Color color315B46 = Color(0xFF315B46);
  static const Color color505050 = Color(0xFF505050);
  static const Color color4D4D4DAlpha = Color(0x204D4D4D);
  static const Color colorE7E7E7 = Color(0xFFE7E7E7);
  static const Color color989898 = Color(0xFF989898);
  static const Color color676767Alpha = Color(0x30676767);
  static const Color color262626 = Color(0xFF262626);
  static const Color color6E6E6E = Color(0xFF6E6E6E);
  static const Color colorFF2D55 = Color(0xFFFF2D55);
  static const Color color8DC63F = Color(0xFF8DC63F);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
