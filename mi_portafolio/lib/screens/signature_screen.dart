import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

/// Pantalla "Firma del Desarrollador".
/// Rediseñada para usar tarjetas (Cards) con ListTiles para la información,
/// y un avatar grande.
class SignatureScreen extends StatelessWidget {
  const SignatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firma del Desarrollador'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
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
        // Avatar grande
        const CircleAvatar(
          radius: 60,
          backgroundColor: AppTheme.cardColor,
          backgroundImage: AssetImage('assets/images/profile.jpg'),
        ),
        const SizedBox(height: 24),

        // Nombre
        Text(
          'Andres Miguel Diaz Arismendi',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),

        // Rol
        Text(
          'Desarrollador de Software',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppTheme.primaryColor,
              ),
        ),
      ],
    );
  }

  /// Construye las tarjetas con información de contacto usando ListTile.
  Widget _buildInfoCards(BuildContext context) {
    return Column(
      children: [
        _buildInfoCard(
          icon: Icons.location_on,
          title: 'Ubicación',
          subtitle: 'La Fuente, Isla de Margarita',
        ),
        _buildInfoCard(
          icon: Icons.school,
          title: 'Universidad',
          subtitle: 'Universidad de Margarita',
        ),
        _buildInfoCard(
          icon: Icons.engineering,
          title: 'Carrera',
          subtitle: 'Ingeniería de Sistemas',
        ),
        _buildInfoCard(
          icon: Icons.code,
          title: 'GitHub',
          subtitle: 'github.com/adiaz2007',
        ),
      ],
    );
  }

  /// Construye una tarjeta individual usando ListTile
  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      child: ListTile(
        leading: Icon(
          icon,
          color: AppTheme.primaryColor,
          size: 28,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: AppTheme.textSecondary,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: AppTheme.textPrimary,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  /// Construye la nota personal al final de la pantalla.
  Widget _buildPersonalNote(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        color: AppTheme.primaryColor.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: AppTheme.primaryColor.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
      ),
    );
  }
}
