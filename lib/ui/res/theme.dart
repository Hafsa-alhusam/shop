import 'package:flutter/material.dart';
import 'package:shop/ui/res/app_colors.dart';

class ApplicationTheme {
  static getAppTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColor.lite_black,

      //
      //
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: AppColor.black,
              backgroundColor: AppColor.lite_green,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 18),
              textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter'))),
      //
      //
      textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 24,
              color: AppColor.white,
              fontFamily: 'Sora',
              fontWeight: FontWeight.bold),
          labelLarge: TextStyle(
              fontSize: 14, fontFamily: 'inter', color: AppColor.grey),
          labelMedium: TextStyle(
              fontSize: 14, fontFamily: 'inter', color: AppColor.white)),
      //
      //
    );
  }
}
