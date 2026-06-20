import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

/// Chip estilizado para mostrar tecnologías y habilidades.
/// Presenta un icono opcional y un label con el nombre de la
/// tecnología, usando los colores del tema para mantener
/// consistencia visual.
class SkillChip extends StatelessWidget {
  /// Nombre de la tecnología o habilidad (ej: "Flutter", "Python").
  final String label;

  /// Icono opcional que acompaña al label.
  final IconData? icon;

  const SkillChip({
    super.key,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: AppTheme.primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppTheme.primaryColor.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icono opcional
          if (icon != null) ...[
            Icon(
              icon,
              size: 16,
              color: AppTheme.accentColor,
            ),
            const SizedBox(width: 6),
          ],

          // Nombre de la habilidad
          Text(
            label,
            style: const TextStyle(
              color: AppTheme.accentColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
