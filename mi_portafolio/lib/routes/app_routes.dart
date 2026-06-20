import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/contact_screen.dart';

/// Clase que centraliza todas las rutas con nombre de la aplicación.
/// Esto mantiene el archivo main.dart limpio y facilita la gestión
/// de la navegación en un solo lugar.
class AppRoutes {
  // ─── Nombres de rutas ────────────────────────────────────────────
  static const String home = '/';
  static const String contact = '/contact';

  /// Mapa de rutas de la aplicación.
  /// Cada ruta con nombre apunta a un builder que retorna el widget
  /// correspondiente a esa pantalla.
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
      contact: (context) => const ContactScreen(),
    };
  }
}
