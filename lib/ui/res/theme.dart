import 'package:flutter/material.dart';

class ApplicationTheme {
  static getAppTheme() {
    return ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(30, 30, 30, 1),
      
        //
        //
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color(0xffD7FC70),
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
                color: Color(0xffFBFBFB),
                fontFamily: 'Sora',
                fontWeight: FontWeight.bold),
            labelLarge: TextStyle(
                fontSize: 14, fontFamily: 'inter', color: Color(0xff808080)),
            labelMedium: TextStyle(
                fontSize: 14, fontFamily: 'inter', color: Color(0xffFBFBFB))),
                //
                //
                
                );
  }
}
