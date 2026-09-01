import 'package:flutter/material.dart';

/// Centralized color palette for the GreenMind AI application.
/// All UI colors should be referenced from this class.
///
/// The palette is theme aware. [isDark] is updated by [GreenMindApp] whenever
/// the user toggles dark mode, and every colour below resolves against it, so
/// existing call sites such as `AppColors.surface` keep working unchanged.
///
/// Note: because these are getters rather than compile-time constants, they
/// cannot be used inside a `const` constructor. Drop the `const` keyword from
/// any widget that reads a colour from this class.

class AppColors {
  AppColors._();

  // =========================
  // Active Brightness
  // =========================

  /// Set from the root widget on every build. Defaults to the light palette.
  static bool isDark = false;

  static Color _pick(Color light, Color dark) => isDark ? dark : light;

  // =========================
  // Primary Colors
  // =========================

  // Lightened in dark mode so the green stays legible on a dark surface.
  static Color get primary =>
      _pick(const Color(0xFF2E7D32), const Color(0xFF66BB6A));

  static Color get primaryLight =>
      _pick(const Color(0xFF4CAF50), const Color(0xFF81C784));

  static Color get primaryDark =>
      _pick(const Color(0xFF1B5E20), const Color(0xFF43A047));

  // =========================
  // Secondary Colors
  // =========================

  static Color get secondary =>
      _pick(const Color(0xFF66BB6A), const Color(0xFF81C784));

  // =========================
  // Background Colors
  // =========================

  static Color get background =>
      _pick(const Color(0xFFF7F9F5), const Color(0xFF0D120E));

  static Color get surface =>
      _pick(Colors.white, const Color(0xFF151C17));

  /// Slightly raised surface, for input fields and nested cards.
  static Color get surfaceVariant =>
      _pick(const Color(0xFFF1F5F1), const Color(0xFF1B241D));

  // =========================
  // Text Colors
  // =========================

  static Color get textPrimary =>
      _pick(const Color(0xFF1E1E1E), const Color(0xFFF1F5F1));

  static Color get textSecondary =>
      _pick(const Color(0xFF6B7280), const Color(0xFFA8B3AA));

  /// Always light — intended for text drawn on a coloured button.
  static const Color textLight = Colors.white;

  // =========================
  // Status Colors
  // =========================

  static Color get success =>
      _pick(const Color(0xFF2E7D32), const Color(0xFF66BB6A));

  static Color get warning =>
      _pick(const Color(0xFFFFA000), const Color(0xFFFFB74D));

  static Color get error =>
      _pick(const Color(0xFFD32F2F), const Color(0xFFFF6B60));

  static Color get info =>
      _pick(const Color(0xFF1976D2), const Color(0xFF64B5F6));

  // =========================
  // Border & Divider
  // =========================

  static Color get border =>
      _pick(const Color(0xFFE5E7EB), const Color(0xFF2A352C));

  static Color get divider =>
      _pick(const Color(0xFFEEEEEE), const Color(0xFF29332B));

  // =========================
  // Disabled
  // =========================

  static Color get disabled =>
      _pick(const Color(0xFFBDBDBD), const Color(0xFF4A554C));

  // =========================
  // Card Shadow
  // =========================

  static Color get shadow =>
      _pick(const Color(0x14000000), const Color(0x40000000));
}
