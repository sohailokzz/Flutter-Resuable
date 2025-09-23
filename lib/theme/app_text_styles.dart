import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Base font family
  static String get fontFamily =>
      'Roboto'; // or GoogleFonts.roboto().fontFamily!

  // Light Theme Text Styles
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.roboto(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      color: AppColors.lightTextPrimary,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      color: AppColors.lightTextPrimary,
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: AppColors.lightTextPrimary,
    ),
    headlineLarge: GoogleFonts.roboto(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: AppColors.lightTextPrimary,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: AppColors.lightTextPrimary,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.lightTextPrimary,
    ),
    titleLarge: GoogleFonts.roboto(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColors.lightTextPrimary,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.lightTextPrimary,
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.lightTextPrimary,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.lightTextPrimary,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.lightTextPrimary,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.lightTextSecondary,
    ),
    labelLarge: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.lightTextPrimary,
    ),
    labelMedium: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.lightTextPrimary,
    ),
    labelSmall: GoogleFonts.roboto(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: AppColors.lightTextSecondary,
    ),
  );

  // Dark Theme Text Styles
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.roboto(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      color: AppColors.darkTextPrimary,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      color: AppColors.darkTextPrimary,
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: AppColors.darkTextPrimary,
    ),
    headlineLarge: GoogleFonts.roboto(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: AppColors.darkTextPrimary,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: AppColors.darkTextPrimary,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.darkTextPrimary,
    ),
    titleLarge: GoogleFonts.roboto(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColors.darkTextPrimary,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.darkTextPrimary,
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.darkTextPrimary,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.darkTextPrimary,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.darkTextPrimary,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.darkTextSecondary,
    ),
    labelLarge: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.darkTextPrimary,
    ),
    labelMedium: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.darkTextPrimary,
    ),
    labelSmall: GoogleFonts.roboto(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: AppColors.darkTextSecondary,
    ),
  );
}
