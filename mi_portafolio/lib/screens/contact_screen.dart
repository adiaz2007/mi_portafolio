import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

/// Pantalla "Firma del Desarrollador".
/// Muestra la información de contacto del desarrollador, incluyendo
/// ubicación, correo electrónico, universidad, y una breve nota personal.
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firma del Desarrollador'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 40),

            // ─── Avatar y nombre ───────────────────────────────────
            _buildProfileHeader(context),
            const SizedBox(height: 40),

            // ─── Tarjetas de información ───────────────────────────
            _buildInfoCards(context),
            const SizedBox(height: 32),

            // ─── Nota personal ─────────────────────────────────────
            _buildPersonalNote(context),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  /// Construye el encabezado con avatar y nombre del desarrollador.
  Widget _buildProfileHeader(BuildContext context) {
    return Column(
      children: [
        // Avatar con gradiente
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppTheme.primaryGradient,
          ),
          child: const CircleAvatar(
            radius: 50,
            backgroundColor: AppTheme.cardColor,
            child: Icon(
              Icons.person,
              size: 50,
              color: AppTheme.primaryColor,
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Nombre
        Text(
          'Andres Miguel Diaz Arismendi',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 8),

        // Rol
        Text(
          'Desarrollador de Software',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppTheme.accentColor,
              ),
        ),
      ],
    );
  }

  /// Construye las tarjetas con información de contacto.
  Widget _buildInfoCards(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _buildContactTile(
            context,
            icon: Icons.location_on_outlined,
            title: 'Ubicación',
            subtitle: 'La Fuente, Isla de Margarita',
          ),
          const SizedBox(height: 12),
          _buildContactTile(
            context,
            icon: Icons.school_outlined,
            title: 'Universidad',
            subtitle: 'Universidad de Margarita',
          ),
          const SizedBox(height: 12),
          _buildContactTile(
            context,
            icon: Icons.engineering_outlined,
            title: 'Carrera',
            subtitle: 'Ingeniería de Sistemas',
          ),
          const SizedBox(height: 12),
          _buildContactTile(
            context,
            icon: Icons.code,
            title: 'GitHub',
            subtitle: 'github.com/adiaz2007',
          ),
        ],
      ),
    );
  }

  /// Construye una fila individual de información de contacto.
  Widget _buildContactTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.dividerColor),
      ),
      child: Row(
        children: [
          // Icono con fondo
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: AppTheme.primaryColor,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),

          // Texto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 15,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Construye la nota personal al final de la pantalla de contacto.
  Widget _buildPersonalNote(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.primaryColor.withValues(alpha: 0.1),
              AppTheme.primaryDark.withValues(alpha: 0.05),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppTheme.primaryColor.withValues(alpha: 0.2),
          ),
        ),
        child: Column(
          children: [
            const Icon(
              Icons.format_quote,
              color: AppTheme.primaryColor,
              size: 32,
            ),
            const SizedBox(height: 12),
            Text(
              '¡Gracias por visitar mi portafolio! Estoy siempre abierto '
              'a aprender nuevas tecnologías y colaborar en proyectos '
              'interesantes.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: AppTheme.textSecondary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
