import 'package:animated_carrousel/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  // Default color for text is light, so it's optional to change text color

  static TextStyle montserratTitle({
    Color color = AppColors.dark,
    FontWeight fontWeight = FontWeight.bold,
  }) =>
      TextStyle(
        fontSize: 42,
        color: color,
        fontFamily: 'Montserrat',
        letterSpacing: 0.25,
        fontWeight: fontWeight,
      );

  static TextStyle montserratButton({
    Color color = AppColors.dark,
    FontWeight fontWeight = FontWeight.w600,
  }) =>
      TextStyle(
        fontSize: 14,
        color: color,
        fontFamily: 'Montserrat',
        letterSpacing: 1.25,
        fontWeight: fontWeight,
      );

  static TextStyle montserratBody({
    Color color = AppColors.dark,
    FontWeight? fontWeight,
  }) =>
      TextStyle(
        fontSize: 14,
        color: color,
        fontFamily: 'Montserrat',
        letterSpacing: 0.25,
        fontWeight: fontWeight,
      );

  static TextStyle montserratSubtitle({
    Color color = AppColors.dark,
    FontWeight fontWeight = FontWeight.w600,
  }) =>
      TextStyle(
        fontSize: 12,
        color: color,
        fontFamily: 'Montserrat',
        letterSpacing: 0.25,
        fontWeight: fontWeight,
      );
}
