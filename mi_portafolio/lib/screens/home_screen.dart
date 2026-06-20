import 'package:flutter/material.dart';
import '../themes/app_theme.dart';
import '../routes/app_routes.dart';
import '../widgets/section_card.dart';
import '../widgets/skill_chip.dart';
import '../widgets/project_card.dart';
import '../widgets/footer_widget.dart';

/// Pantalla principal del portafolio.
/// Muestra todas las secciones en un scroll vertical:
/// Hero → ¿Quién soy? → ¿Qué hago? → Hobbies → Footer.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Portafolio'),
        actions: [
          // Botón que navega a la pantalla de contacto
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            tooltip: 'Firma del Desarrollador',
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.contact);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // ─── Sección Hero ──────────────────────────────────────
            _buildHeroSection(context),
            const SizedBox(height: 32),

            // ─── Sección ¿Quién soy? ──────────────────────────────
            _buildQuienSoySection(context),
            const SizedBox(height: 32),

            // ─── Sección ¿Qué hago? ───────────────────────────────
            _buildQueHagoSection(context),
            const SizedBox(height: 32),

            // ─── Sección Hobbies ───────────────────────────────────
            _buildHobbiesSection(context),
            const SizedBox(height: 40),

            // ─── Footer ────────────────────────────────────────────
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  /// Construye la sección hero con el avatar, nombre y subtítulo.
  Widget _buildHeroSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppTheme.surfaceColor,
            AppTheme.primaryDark.withValues(alpha: 0.3),
            AppTheme.surfaceColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          // Avatar con borde de gradiente
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: AppTheme.primaryGradient,
            ),
            child: const CircleAvatar(
              radius: 60,
              backgroundColor: AppTheme.cardColor,
              child: Icon(
                Icons.person,
                size: 60,
                color: AppTheme.primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Nombre completo
          Text(
            'Andres Miguel\nDiaz Arismendi',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  height: 1.2,
                ),
          ),
          const SizedBox(height: 12),

          // Subtítulo / rol
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppTheme.primaryColor.withValues(alpha: 0.3),
              ),
            ),
            child: const Text(
              'Estudiante de Ingeniería de Sistemas',
              style: TextStyle(
                color: AppTheme.accentColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Construye la sección "¿Quién soy?" con la descripción personal.
  Widget _buildQuienSoySection(BuildContext context) {
    return SectionCard(
      icon: Icons.person_outline,
      title: '¿Quién soy?',
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppTheme.cardColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppTheme.dividerColor),
        ),
        child: Text(
          'Soy un estudiante de Ingeniería de Sistemas de 18 años en la '
          'Universidad de Margarita, residenciado en La Fuente. Actualmente '
          'me dedico a tiempo completo a mis estudios universitarios y a mi '
          'crecimiento como desarrollador, por lo que no me encuentro '
          'trabajando profesionalmente.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }

  /// Construye la sección "¿Qué hago?" con habilidades y proyectos.
  Widget _buildQueHagoSection(BuildContext context) {
    return SectionCard(
      icon: Icons.code,
      title: '¿Qué hago?',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Descripción general
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppTheme.cardColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppTheme.dividerColor),
            ),
            child: Text(
              'Desarrollo aplicaciones móviles y de escritorio. Tengo '
              'conocimientos y experiencia programando en varios lenguajes '
              'y frameworks.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 20),

          // Chips de tecnologías
          Text(
            'Tecnologías',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppTheme.textPrimary,
                ),
          ),
          const SizedBox(height: 12),
          const Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              SkillChip(label: 'Dart', icon: Icons.flutter_dash),
              SkillChip(label: 'Flutter', icon: Icons.phone_android),
              SkillChip(label: 'C#', icon: Icons.desktop_windows),
              SkillChip(label: 'Python', icon: Icons.terminal),
              SkillChip(label: 'Java', icon: Icons.coffee),
              SkillChip(label: 'Arduino', icon: Icons.memory),
            ],
          ),
          const SizedBox(height: 24),

          // Proyectos destacados
          Text(
            'Proyectos Destacados',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppTheme.textPrimary,
                ),
          ),
          const SizedBox(height: 12),

          // Lista de proyectos
          const ProjectCard(
            projectName: 'Contador de Almas',
            description:
                'Aplicación móvil desarrollada como proyecto práctico '
                'para aprender el framework Flutter.',
            technology: 'Flutter / Dart',
            icon: Icons.phone_android,
          ),
          const SizedBox(height: 12),
          const ProjectCard(
            projectName: 'Sistema de Gestión de Gimnasio',
            description:
                'Sistema de escritorio para la administración integral '
                'de un gimnasio, con interfaz gráfica en Windows Forms.',
            technology: 'C# / Windows Forms',
            icon: Icons.fitness_center,
          ),
          const SizedBox(height: 12),
          const ProjectCard(
            projectName: 'Electrónica con Arduino',
            description:
                'Proyectos de electrónica y automatización utilizando '
                'Arduino y Tinkercad con el temporizador 555.',
            technology: 'Arduino / Tinkercad',
            icon: Icons.developer_board,
          ),
        ],
      ),
    );
  }

  /// Construye la sección "Hobbies" con los pasatiempos personales.
  Widget _buildHobbiesSection(BuildContext context) {
    return SectionCard(
      icon: Icons.sports_esports,
      title: 'Hobbies',
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppTheme.cardColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppTheme.dividerColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Me apasiona jugar videojuegos (principalmente Minecraft, '
              'Balatro, Pokémon y Call of Duty Zombies), soy un gran '
              'amante del café y en mi tiempo libre disfruto cocinar '
              'platos tradicionales como pastelitos maracuchos.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),

            // Chips de hobbies
            const Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                SkillChip(label: 'Minecraft', icon: Icons.games),
                SkillChip(label: 'Balatro', icon: Icons.casino),
                SkillChip(label: 'Pokémon', icon: Icons.catching_pokemon),
                SkillChip(label: 'CoD Zombies', icon: Icons.sports_esports),
                SkillChip(label: 'Café', icon: Icons.coffee),
                SkillChip(label: 'Cocina', icon: Icons.restaurant),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
