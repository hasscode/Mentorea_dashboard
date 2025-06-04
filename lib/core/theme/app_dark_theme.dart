import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF161B3E),
  primaryColor: const Color(0xFF10142B),
  cardColor: const Color(0xFF1E1E1E),
  hintColor: const Color(0xffA6A6A6),
  dividerColor: const Color(0xff3A3A3A),
  fontFamily: 'NunitoSans',
  textTheme: TextTheme(
    displayLarge: AppStyles.styleBold32.copyWith(color: Colors.white),
    displayMedium: AppStyles.styleBold28.copyWith(color: Colors.white),
    displaySmall: AppStyles.styleBold24.copyWith(color: Colors.white),
    headlineMedium: AppStyles.styleBold20.copyWith(color: Colors.white),
    headlineSmall: AppStyles.styleBold18.copyWith(color: Colors.white),
    titleLarge: AppStyles.styleBold16.copyWith(color: Colors.white),
    titleMedium: AppStyles.styleSemiBold15.copyWith(color: Colors.white),
    titleSmall: AppStyles.styleSemiBold14.copyWith(color: Colors.white),
    bodyLarge: AppStyles.styleRegular14.copyWith(color: Colors.white70),
    bodyMedium: AppStyles.styleSemiBold12.copyWith(color: Colors.white70),
    bodySmall: AppStyles.styleBold10.copyWith(color: Colors.white60),
    labelLarge: AppStyles.styleBold14.copyWith(color: Colors.white),
    labelMedium: AppStyles.styleBold12.copyWith(color: Colors.white70),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xff1E1E1E),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Color(0xff3A3A3A)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Colors.white),
    ),
    hintStyle: AppStyles.styleSemiBold18.copyWith(color: const Color(0xffA6A6A6)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: const Color(0xFF10142B),
      textStyle: AppStyles.styleSemiBold14.copyWith(color: const Color(0xFF10142B)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xff1E1E1E),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Color(0xff3A3A3A)),
      ),
      hintStyle: AppStyles.styleSemiBold15.copyWith(color: const Color(0xffA6A6A6)),
    ),
  ),
);
