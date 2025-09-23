// File: lib/themes/theme_helper.dart
import 'package:flutter/material.dart';

import 'app_theme_extensions.dart';

class ThemeHelper {
  // Get custom colors extension
  static AppCustomColors getCustomColors(BuildContext context) {
    return Theme.of(context).extension<AppCustomColors>()!;
  }

  // Check if current theme is dark
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // Get appropriate color based on theme
  static Color getAdaptiveColor(
    BuildContext context,
    Color lightColor,
    Color darkColor,
  ) {
    return isDarkMode(context) ? darkColor : lightColor;
  }
}
