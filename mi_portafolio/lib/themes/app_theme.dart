import 'package:flutter/material.dart';

/// Clase que centraliza toda la configuración del tema de la aplicación.
/// Utiliza un esquema de colores extra oscuro con acentos en cian puro
/// para lograr un diseño moderno basado en el mockup.
class AppTheme {
  // ─── Colores principales ─────────────────────────────────────────
  static const Color primaryColor = Color(0xFF00E5FF); // Cian más vibrante
  static const Color primaryDark = Color(0xFF00B8D4);
  static const Color accentColor = Color(0xFF18FFFF);
  
  // Fondo casi negro para el modo oscuro profundo
  static const Color backgroundColor = Color(0xFF050505); 
  static const Color surfaceColor = Color(0xFF121212);
  
  // Color de las tarjetas, ligeramente más claro que el fondo
  static const Color cardColor = Color(0xFF1E1E1E); 
  
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFA0A0A0);
  static const Color dividerColor = Color(0xFF2C2C2C);

  /// Gradiente principal
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryColor, Color(0xFF00B8D4)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // ─── Tema principal (oscuro) ─────────────────────────────────────
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: backgroundColor,

      // Esquema de colores basado en el color primario
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: accentColor,
        surface: surfaceColor,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: textPrimary,
      ),

      // Configuración del AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor, // Mismo color que el fondo
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: textPrimary,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
        iconTheme: IconThemeData(color: textPrimary), // Iconos blancos por defecto
      ),

      // Configuración de Cards
      cardTheme: CardThemeData(
        color: cardColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: dividerColor, width: 1),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),

      // Configuración del BottomNavigationBar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: surfaceColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: textSecondary,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),

      // Configuración de textos
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: textPrimary,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.5,
        ),
        headlineMedium: TextStyle(
          color: textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: textSecondary,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: textPrimary,
          fontSize: 16,
          height: 1.6,
        ),
        bodyMedium: TextStyle(
          color: textSecondary,
          fontSize: 14,
          height: 1.5,
        ),
      ),

      // Divisor
      dividerTheme: const DividerThemeData(
        color: dividerColor,
        thickness: 1,
        space: 32,
      ),
    );
  }
}
