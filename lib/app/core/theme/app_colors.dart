import 'package:flutter/material.dart';

// final _primary = {
//   500: Color(0xff252F67),
// };

class AppColors {
  AppColors();

  static const primaryColor = Color(0xff0a0a0a);
  static const secondaryColor = Color(0xff4c1d95);

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
