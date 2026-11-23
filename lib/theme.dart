import 'package:material_ui/material_ui.dart';

/// Colors taken from the Cliniqo Figma design.
class AppColors {
  static const navy = Color(0xFF2E3A8C);
  static const lavender = Color(0xFFD9DBF7);
  static const border = Color(0xFF8C8C8C);
  static const grey = Color(0xFF6B6B6B);
  static const red = Color(0xFFE53935);
  static const badgeBg = Color(0xFFFFF5A8);
  static const badgeText = Color(0xFF8A7F2A);
}

/// Shared theme used by both screens.
final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins', // falls back to the default font if not registered
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.navy),
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    headlineSmall: TextStyle(
        fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.navy),
    titleMedium: TextStyle(
        fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.navy),
    bodyMedium: TextStyle(fontSize: 13, color: AppColors.grey),
    labelLarge: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
  ),
);