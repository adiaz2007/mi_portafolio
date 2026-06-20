import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

/// Widget que muestra el pie de página del portafolio.
/// Incluye el año actual (dinámico), el nombre del desarrollador,
/// y un mensaje de tecnología utilizada.
class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final int currentYear = DateTime.now().year;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      decoration: const BoxDecoration(
        color: AppTheme.surfaceColor,
        border: Border(
          top: BorderSide(color: AppTheme.dividerColor),
        ),
      ),
      child: Column(
        children: [
          // ─── Línea decorativa ────────────────────────────────────
          Container(
            width: 40,
            height: 3,
            decoration: BoxDecoration(
              gradient: AppTheme.primaryGradient,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 20),

          // ─── Texto de copyright ──────────────────────────────────
          Text(
            '© $currentYear Andres Miguel Diaz Arismendi',
            style: const TextStyle(
              color: AppTheme.textSecondary,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),

          // ─── Texto de tecnología ─────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hecho con ',
                style: TextStyle(
                  color: AppTheme.textSecondary,
                  fontSize: 12,
                ),
              ),
              Icon(
                Icons.favorite,
                size: 14,
                color: Colors.redAccent.shade100,
              ),
              const Text(
                ' y Flutter',
                style: TextStyle(
                  color: AppTheme.textSecondary,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
