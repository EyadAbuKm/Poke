import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs_test/shared/constants/colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Color(0xFF337AB7),
      textTheme: TextTheme(
        labelLarge: TextStyle(fontSize: 16.sp), // Adjust the font size here
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorConstants.primaryColor, brightness: Brightness.light,
        secondary: ColorConstants.secondaryColor,
        // Other theme properties...
      ));

  static final darkTheme = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[800],
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700)

      ),
      primaryColor: ColorConstants.primaryColor,
      textTheme: TextTheme(
        labelLarge: TextStyle(fontSize: 16.sp), // Adjust the font size here
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorConstants.primaryColor,
        brightness: Brightness.dark,
        secondary: ColorConstants.secondaryColor,
      )
      // Other theme properties...
  );
}