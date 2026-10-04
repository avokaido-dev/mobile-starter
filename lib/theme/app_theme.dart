import 'package:flutter/material.dart';

import 'brand.dart' as brand;

/// Builds the app-wide [ThemeData]. Reads design tokens from
/// [brand.dart] so the AI scaffold only has to touch one file to
/// re-skin the whole app. The AI normally OVERRIDES this file with a
/// richer per-app theme; this default is the safe baseline.
ThemeData buildAppTheme() {
  final scheme = ColorScheme.fromSeed(
    seedColor: brand.primaryColor,
    secondary: brand.secondaryColor,
    brightness: brand.brightness,
  );
  final radius = BorderRadius.circular(brand.cornerRadius);
  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    scaffoldBackgroundColor: brand.surfaceColor ?? scheme.surface,
    fontFamily: brand.fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: brand.surfaceColor ?? scheme.surface,
      foregroundColor: scheme.onSurface,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        fontFamily: brand.fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: scheme.onSurface,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: radius),
      enabledBorder: OutlineInputBorder(borderRadius: radius),
    ),
  );
}
