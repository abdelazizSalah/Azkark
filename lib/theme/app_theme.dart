import 'package:flutter/material.dart';

class AppColors {
  static const lightBackground = Color(0xFFEFF8EC);
  static const lightSurface = Color(0xFFFBFFF7);
  static const lightPrimary = Color(0xFF2E7D32);
  static const lightPrimaryDark = Color(0xFF1B5E20);
  static const lightAccent = Color(0xFFC89B2C);
  static const lightMuted = Color(0xFFDDEFD6);

  static const darkBackground = Color(0xFF07182E);
  static const darkSurface = Color(0xFF102A4C);
  static const darkPrimary = Color(0xFF174A7C);
  static const darkPrimaryDark = Color(0xFF081F3D);
  static const darkAccent = Color(0xFFE3B64F);
  static const darkMuted = Color(0xFF1F3C63);
}

class AppTheme {
  static ThemeData build({required bool darkMode}) {
    final background =
        darkMode ? AppColors.darkBackground : AppColors.lightBackground;
    final surface = darkMode ? AppColors.darkSurface : AppColors.lightSurface;
    final primary = darkMode ? AppColors.darkPrimary : AppColors.lightPrimary;
    final primaryDark =
        darkMode ? AppColors.darkPrimaryDark : AppColors.lightPrimaryDark;
    final accent = darkMode ? AppColors.darkAccent : AppColors.lightAccent;
    final muted = darkMode ? AppColors.darkMuted : AppColors.lightMuted;
    final onSurface =
        darkMode ? const Color(0xFFF7EFD8) : const Color(0xFF12301E);

    final colorScheme = ColorScheme(
      brightness: darkMode ? Brightness.dark : Brightness.light,
      primary: primary,
      onPrimary: Colors.white,
      secondary: accent,
      onSecondary: darkMode ? const Color(0xFF1C1607) : Colors.white,
      error: const Color(0xFFB3261E),
      onError: Colors.white,
      surface: surface,
      onSurface: onSurface,
    );

    final base = ThemeData(
      useMaterial3: true,
      brightness: darkMode ? Brightness.dark : Brightness.light,
      colorScheme: colorScheme,
      fontFamily: 'Amiri',
    );

    return base.copyWith(
      scaffoldBackgroundColor: background,
      canvasColor: background,
      primaryColor: primary,
      splashColor: primary,
      hintColor: primaryDark,
      hoverColor: muted,
      focusColor: muted,
      highlightColor: accent,
      cardColor: surface,
      dividerColor: accent.withValues(alpha: 0.55),
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: primaryDark,
        foregroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.white, size: 32),
        actionsIconTheme: const IconThemeData(color: Colors.white, size: 30),
        surfaceTintColor: Colors.transparent,
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: surface,
        surfaceTintColor: Colors.transparent,
      ),
      cardTheme: CardThemeData(
        color: surface,
        elevation: 4,
        shadowColor: primaryDark.withValues(alpha: darkMode ? 0.48 : 0.18),
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontFamily: 'Amiri',
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: accent,
        foregroundColor: darkMode ? const Color(0xFF1C1607) : Colors.white,
        elevation: 4,
        iconSize: 32,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected) ? accent : surface,
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? primary.withValues(alpha: 0.55)
              : muted,
        ),
      ),
      textTheme: base.textTheme.copyWith(
        titleLarge: const TextStyle(
          fontFamily: 'Amiri',
          fontSize: 34,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Amiri',
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: accent,
        ),
        displayLarge: TextStyle(
          fontFamily: 'Amiri',
          fontSize: 25,
          fontWeight: FontWeight.w800,
          color: onSurface,
        ),
        displayMedium: const TextStyle(
          fontFamily: 'Amiri',
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Amiri',
          fontSize: 26,
          height: 1.6,
          color: onSurface,
        ),
        bodyMedium: const TextStyle(
          fontFamily: 'Amiri',
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Amiri',
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: onSurface,
        ),
      ),
    );
  }
}
