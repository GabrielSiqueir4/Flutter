import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#78756e');

  static Color gray400 = fromHex('#bfbab3');

  static Color gray800 = fromHex('#3b3b36');

  static Color gray900 = fromHex('#0f172b');

  static Color bluegray100 = fromHex('#d6d4d4');

  static Color gray101 = fromHex('#f2f2f2');

  static Color gray100 = fromHex('#f7f2ed');

  static Color red50 = fromHex('#fff5ed');

  static Color gray600A2 = fromHex('#a278756e');

  static Color deepOrange700 = fromHex('#e35729');

  static Color black900 = fromHex('#000000');

  static Color bluegray401 = fromHex('#888888');

  static Color bluegray400 = fromHex('#5ca191');

  static Color bluegray101 = fromHex('#cccccc');

  static Color blue300 = fromHex('#66abeb');

  static Color deepPurpleA200 = fromHex('#7a61ff');

  static Color blue200 = fromHex('#94bfe8');

  static Color gray800A2 = fromHex('#a23b3b36');

  static Color deepOrange400 = fromHex('#f27059');

  static Color deepOrange70090 = fromHex('#90e35729');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
