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
      primary: AppColor.lightPrimary,
      onPrimary: AppColor.lightOnPrimary,
      secondary: AppColor.lightSecondary,
      onSecondary: AppColor.lightOnSecondary,
      surface: AppColor.lightSurface,
      error: AppColor.lightError,
    ),

    // Scaffold
    scaffoldBackgroundColor: AppColor.lightBackground,

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
        success: AppColor.success,
        warning: AppColor.warning,
        info: AppColor.info,
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
      primary: AppColor.darkPrimary,
      onPrimary: AppColor.darkOnPrimary,
      secondary: AppColor.darkSecondary,
      onSecondary: AppColor.darkOnSecondary,
      surface: AppColor.darkSurface,
      error: AppColor.darkError,
    ),

    // Scaffold
    scaffoldBackgroundColor: AppColor.darkBackground,

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
        success: AppColor.success,
        warning: AppColor.warning,
        info: AppColor.info,
        cardShadow: Colors.black38,
        divider: Colors.grey,
      ),
    ],
  );
}
