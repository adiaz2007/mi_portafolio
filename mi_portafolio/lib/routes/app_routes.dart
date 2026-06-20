import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/signature_screen.dart';

/// Clase que centraliza todas las rutas con nombre de la aplicación.
class AppRoutes {
  // ─── Nombres de rutas ────────────────────────────────────────────
  static const String home = '/';
  static const String signature = '/signature';

  /// Mapa de rutas de la aplicación.
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
      signature: (context) => const SignatureScreen(),
    };
  }
}
