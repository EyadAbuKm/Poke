

import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xFF337AB7),

      colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xFF337AB7), brightness: Brightness.light ,secondary:Color(0xFFFF5757 )
    // Other theme properties...
  ));

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF337AB7),
  colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xFF337AB7), brightness: Brightness.dark ,secondary:Color(0xFFFF5757 ))
    // Other theme properties...
  );
}