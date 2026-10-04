import 'package:flutter/material.dart';

/// Per-app design tokens. The AI scaffold OVERWRITES this file with the
/// values the user picked in the new-project chat; app_theme.dart turns
/// these into the ThemeData. Stays in sync with the previewMock the chat
/// canvas renders (primaryColor == previewMock palette.primary).
const Color primaryColor = Color(0xFF3949AB);
const Color secondaryColor = Color(0xFF5C6BC0);
const Color? surfaceColor = null;
const Brightness brightness = Brightness.light;
const String? fontFamily = null;
const double cornerRadius = 16;
