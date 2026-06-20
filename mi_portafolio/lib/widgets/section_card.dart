import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

/// Widget reutilizable que representa una sección del portafolio.
/// Muestra un icono, un título y el contenido pasado como child.
/// Se utiliza para mantener consistencia visual entre las diferentes
/// secciones de la pantalla principal.
class SectionCard extends StatelessWidget {
  /// Icono que se muestra junto al título de la sección.
  final IconData icon;

  /// Título de la sección (ej: "¿Qué hago?", "Hobbies").
  final String title;

  /// Contenido de la sección, puede ser cualquier widget.
  final Widget child;

  const SectionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ─── Encabezado de la sección ────────────────────────────
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: AppTheme.primaryColor,
                  size: 22,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
          const SizedBox(height: 16),

          // ─── Contenido de la sección ─────────────────────────────
          child,
        ],
      ),
    );
  }
}
