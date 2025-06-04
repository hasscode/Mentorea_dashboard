import 'package:flutter/material.dart';
import 'app_text_styles.dart';

final ThemeData lightTheme = ThemeData(

  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: const Color(0xff050A30),
  cardColor: const Color(0xffF1F4F9),
  hintColor: const Color(0xffA6A6A6),
  dividerColor: const Color(0xffD5D5D5),
    textTheme: TextTheme(
      displayLarge: AppStyles.styleBold32,
      displayMedium: AppStyles.styleBold28,
      displaySmall: AppStyles.styleBold24,
      headlineMedium: AppStyles.styleBold20,
      headlineSmall: AppStyles.styleBold18,
      titleLarge: AppStyles.styleBold16,
      titleMedium: AppStyles.styleSemiBold15,
      titleSmall: AppStyles.styleSemiBold14,
      bodyLarge: AppStyles.styleRegular14,
      bodyMedium: AppStyles.styleSemiBold12,
      bodySmall: AppStyles.styleBold10,
      labelLarge: AppStyles.styleBold14,
      labelMedium: AppStyles.styleBold12,
    ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xffF1F4F9),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Color(0xffD5D5D5)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Color(0xff050A30)),
    ),
    hintStyle: const TextStyle(
      fontFamily: 'NunitoSans',
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: Color(0xffA6A6A6),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff050A30),
      textStyle: const TextStyle(
        fontFamily: 'NunitoSans',
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
);
