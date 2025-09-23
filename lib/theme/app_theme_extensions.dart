// File: lib/themes/app_theme_extensions.dart
import 'package:flutter/material.dart';

@immutable
class AppCustomColors extends ThemeExtension<AppCustomColors> {
  final Color? success;
  final Color? warning;
  final Color? info;
  final Color? cardShadow;
  final Color? divider;

  const AppCustomColors({
    this.success,
    this.warning,
    this.info,
    this.cardShadow,
    this.divider,
  });

  @override
  AppCustomColors copyWith({
    Color? success,
    Color? warning,
    Color? info,
    Color? cardShadow,
    Color? divider,
  }) {
    return AppCustomColors(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      cardShadow: cardShadow ?? this.cardShadow,
      divider: divider ?? this.divider,
    );
  }

  @override
  AppCustomColors lerp(ThemeExtension<AppCustomColors>? other, double t) {
    if (other is! AppCustomColors) {
      return this;
    }
    return AppCustomColors(
      success: Color.lerp(success, other.success, t),
      warning: Color.lerp(warning, other.warning, t),
      info: Color.lerp(info, other.info, t),
      cardShadow: Color.lerp(cardShadow, other.cardShadow, t),
      divider: Color.lerp(divider, other.divider, t),
    );
  }
}
