import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

/// Card que muestra información de un proyecto destacado.
/// Incluye nombre del proyecto, descripción, y la tecnología
/// utilizada, todo dentro de un contenedor estilizado.
class ProjectCard extends StatelessWidget {
  /// Nombre del proyecto (ej: "Contador de Almas").
  final String projectName;

  /// Descripción breve del proyecto.
  final String description;

  /// Tecnología o framework utilizado (ej: "Flutter", "C#").
  final String technology;

  /// Icono representativo del proyecto.
  final IconData icon;

  const ProjectCard({
    super.key,
    required this.projectName,
    required this.description,
    required this.technology,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.dividerColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ─── Icono del proyecto ──────────────────────────────────
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: AppTheme.primaryColor,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),

          // ─── Información del proyecto ────────────────────────────
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nombre del proyecto
                Text(
                  projectName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 6),

                // Descripción
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),

                // Badge de tecnología
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryDark.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    technology,
                    style: const TextStyle(
                      color: AppTheme.accentColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
