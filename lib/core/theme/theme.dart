import 'package:flutter/material.dart';
import 'package:qr_student_system/core/utils/color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    cardColor: AppColors.pureWhite,
    scaffoldBackgroundColor: AppColors.bgColor,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.pureBlack,
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: AppColors.pureBlack,
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: AppColors.pureBlack,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: AppColors.pureBlack,
        fontSize: 13,
        fontWeight: FontWeight.w300,
      ),

      
    ),
    useMaterial3: true,
  );
}
