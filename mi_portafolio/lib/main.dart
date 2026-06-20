import 'package:flutter/material.dart';
import 'themes/app_theme.dart';
import 'routes/app_routes.dart';

/// Punto de entrada principal de la aplicación.
/// Se mantiene lo más limpio posible, delegando el tema a AppTheme
/// y las rutas a AppRoutes.
void main() {
  runApp(const MyApp());
}

/// Widget raíz de la aplicación.
/// Configura el MaterialApp con el tema oscuro personalizado
/// y el sistema de rutas con nombre.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio - Andres Diaz',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.getRoutes(),
    );
  }
}
