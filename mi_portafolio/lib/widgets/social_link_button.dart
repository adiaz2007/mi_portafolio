import 'package:flutter/material.dart';
import '../../themes/app_theme.dart';

/// Botón estilizado para redes sociales.
/// Muestra un ícono y texto (opcional) con un diseño consistente
/// con el resto de la aplicación.
class SocialLinkButton extends StatelessWidget {
  /// Ícono de la red social
  final IconData icon;

  /// Nombre de la red social
  final String label;

  /// Acción a ejecutar al presionar el botón
  final VoidCallback onPressed;

  const SocialLinkButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: AppTheme.primaryColor,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: AppTheme.textPrimary,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
