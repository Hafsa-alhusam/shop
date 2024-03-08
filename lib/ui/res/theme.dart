import 'package:flutter/material.dart';
import 'package:shop/ui/res/app_colors.dart';

class ApplicationTheme {
  ApplicationTheme._();

  static getAppTheme() {
    return ThemeData(
        hintColor: AppColor.grey,
        scaffoldBackgroundColor: AppColor.lite_black,
        appBarTheme: const AppBarTheme(color: AppColor.lite_black),

        //
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                foregroundColor: AppColor.black,
                backgroundColor: AppColor.lite_green,
                padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 18),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                textStyle: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Inter'))),
        //
        textTheme: const TextTheme(
          labelLarge: TextStyle(fontSize: 14, fontFamily: 'inter', color: AppColor.grey),
          labelMedium: TextStyle(fontSize: 14, fontFamily: 'inter', color: AppColor.white),
          titleLarge: TextStyle(
              fontSize: 24, color: AppColor.white, fontFamily: 'Sora', fontWeight: FontWeight.bold),
        ),
        //
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            minimumSize: const Size(40, 40),
            foregroundColor: AppColor.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
        //
        iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom()),

        // 
        inputDecorationTheme: InputDecorationTheme(
          
        )
        
        
        );
  }
}
