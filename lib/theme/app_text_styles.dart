import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Base font family
  static String get fontFamily =>
      'Roboto'; // or GoogleFonts.roboto().fontFamily!

  // Light Theme Text Styles
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.plusJakartaSans(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      color: AppColor.lightTextPrimary,
    ),
    displayMedium: GoogleFonts.plusJakartaSans(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      color: AppColor.lightTextPrimary,
    ),
    displaySmall: GoogleFonts.plusJakartaSans(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: AppColor.lightTextPrimary,
    ),
    headlineLarge: GoogleFonts.plusJakartaSans(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: AppColor.lightTextPrimary,
    ),
    headlineMedium: GoogleFonts.plusJakartaSans(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: AppColor.lightTextPrimary,
    ),
    headlineSmall: GoogleFonts.plusJakartaSans(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColor.lightTextPrimary,
    ),
    titleLarge: GoogleFonts.plusJakartaSans(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColor.lightTextPrimary,
    ),
    titleMedium: GoogleFonts.plusJakartaSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.lightTextPrimary,
    ),
    titleSmall: GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColor.lightTextPrimary,
    ),
    bodyLarge: GoogleFonts.plusJakartaSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColor.lightTextPrimary,
    ),
    bodyMedium: GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.lightTextPrimary,
    ),
    bodySmall: GoogleFonts.plusJakartaSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColor.lightTextSecondary,
    ),
    labelLarge: GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColor.lightTextPrimary,
    ),
    labelMedium: GoogleFonts.plusJakartaSans(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColor.lightTextPrimary,
    ),
    labelSmall: GoogleFonts.plusJakartaSans(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: AppColor.lightTextSecondary,
    ),
  );

  // Dark Theme Text Styles
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.plusJakartaSans(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      color: AppColor.darkTextPrimary,
    ),
    displayMedium: GoogleFonts.plusJakartaSans(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      color: AppColor.darkTextPrimary,
    ),
    displaySmall: GoogleFonts.plusJakartaSans(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: AppColor.darkTextPrimary,
    ),
    headlineLarge: GoogleFonts.plusJakartaSans(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: AppColor.darkTextPrimary,
    ),
    headlineMedium: GoogleFonts.plusJakartaSans(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: AppColor.darkTextPrimary,
    ),
    headlineSmall: GoogleFonts.plusJakartaSans(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColor.darkTextPrimary,
    ),
    titleLarge: GoogleFonts.plusJakartaSans(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColor.darkTextPrimary,
    ),
    titleMedium: GoogleFonts.plusJakartaSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.darkTextPrimary,
    ),
    titleSmall: GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColor.darkTextPrimary,
    ),
    bodyLarge: GoogleFonts.plusJakartaSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColor.darkTextPrimary,
    ),
    bodyMedium: GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.darkTextPrimary,
    ),
    bodySmall: GoogleFonts.plusJakartaSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColor.darkTextSecondary,
    ),
    labelLarge: GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColor.darkTextPrimary,
    ),
    labelMedium: GoogleFonts.plusJakartaSans(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColor.darkTextPrimary,
    ),
    labelSmall: GoogleFonts.plusJakartaSans(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: AppColor.darkTextSecondary,
    ),
  );
}
