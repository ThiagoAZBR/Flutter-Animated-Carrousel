import 'package:animated_carrousel/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  // Default color for text is light, so it's optional to change text color

  static TextStyle robotoHeadline([Color color = AppColors.light]) => TextStyle(
        fontSize: 34,
        color: color,
        fontFamily: 'Roboto',
        letterSpacing: 0.25,
        fontWeight: FontWeight.bold,
      );

  static TextStyle robotoButton([Color color = AppColors.light]) => TextStyle(
        fontSize: 14,
        color: color,
        fontFamily: 'Roboto',
        letterSpacing: 1.25,
        fontWeight: FontWeight.w600,
      );

  static TextStyle robotoSubtitleOne([Color color = AppColors.light]) =>
      TextStyle(
        fontSize: 16,
        color: color,
        fontFamily: 'Roboto',
        letterSpacing: 0.15,
      );

  static TextStyle robotoSubtitleTwo([Color color = AppColors.light]) =>
      TextStyle(
        fontSize: 14,
        color: color,
        fontFamily: 'Roboto',
        letterSpacing: 0.1,
        fontWeight: FontWeight.w600,
      );

  static TextStyle robotoBody([Color color = AppColors.light]) => TextStyle(
        fontSize: 14,
        color: color,
        fontFamily: 'Roboto',
        letterSpacing: 0.25,
      );

  static TextStyle robotoCaption([Color color = AppColors.light]) => TextStyle(
        fontSize: 12,
        color: color,
        fontFamily: 'Roboto',
        letterSpacing: 0.25,
        fontWeight: FontWeight.w600,
      );
}
