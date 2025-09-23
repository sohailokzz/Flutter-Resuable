import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';
import 'app_theme_extensions.dart';
import 'components_theme.dart';

class AppTheme {
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,

    // Color Scheme
    colorScheme: const ColorScheme.light(
      primary: AppColors.lightPrimary,
      onPrimary: AppColors.lightOnPrimary,
      secondary: AppColors.lightSecondary,
      onSecondary: AppColors.lightOnSecondary,
      surface: AppColors.lightSurface,
      error: AppColors.lightError,
    ),

    // Scaffold
    scaffoldBackgroundColor: AppColors.lightBackground,

    // Text Theme
    textTheme: AppTextStyles.lightTextTheme,

    // Component Themes
    appBarTheme: ComponentThemes.lightAppBarTheme,
    elevatedButtonTheme: ComponentThemes.lightElevatedButtonTheme,
    inputDecorationTheme: ComponentThemes.lightInputDecorationTheme,
    cardTheme: ComponentThemes.lightCardTheme,
    bottomNavigationBarTheme: ComponentThemes.lightBottomNavTheme,

    // Extensions
    extensions: <ThemeExtension<dynamic>>[
      const AppCustomColors(
        success: AppColors.success,
        warning: AppColors.warning,
        info: AppColors.info,
        cardShadow: Colors.black12,
        divider: Colors.grey,
      ),
    ],
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,

    // Color Scheme
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkPrimary,
      onPrimary: AppColors.darkOnPrimary,
      secondary: AppColors.darkSecondary,
      onSecondary: AppColors.darkOnSecondary,
      surface: AppColors.darkSurface,
      error: AppColors.darkError,
    ),

    // Scaffold
    scaffoldBackgroundColor: AppColors.darkBackground,

    // Text Theme
    textTheme: AppTextStyles.darkTextTheme,

    // Component Themes
    appBarTheme: ComponentThemes.darkAppBarTheme,
    elevatedButtonTheme: ComponentThemes.darkElevatedButtonTheme,
    inputDecorationTheme: ComponentThemes.darkInputDecorationTheme,
    cardTheme: ComponentThemes.darkCardTheme,
    bottomNavigationBarTheme: ComponentThemes.darkBottomNavTheme,

    // Extensions
    extensions: <ThemeExtension<dynamic>>[
      const AppCustomColors(
        success: AppColors.success,
        warning: AppColors.warning,
        info: AppColors.info,
        cardShadow: Colors.black38,
        divider: Colors.grey,
      ),
    ],
  );
}
