import 'package:flutter/material.dart';
import '../../themes/app_theme.dart';
import '../../widgets/skill_chip.dart';

/// Pestaña "Habilidades" que muestra las tecnologías, lenguajes
/// de programación y los hobbies del desarrollador.
class SkillsTab extends StatelessWidget {
  const SkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            
            // ─── Sección ¿Qué hago? ────────────────────────────────
            Row(
              children: [
                const Icon(
                  Icons.code,
                  color: AppTheme.primaryColor,
                  size: 24,
                ),
                const SizedBox(width: 8),
                Text(
                  '¿Qué hago?',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Desarrollo aplicaciones móviles y de escritorio. Tengo '
                      'conocimientos y experiencia programando en varios lenguajes '
                      'y frameworks.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Tecnologías',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppTheme.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 12),
                    const Wrap(
                      spacing: 8,
                      runSpacing: 12,
                      children: [
                        SkillChip(label: 'Dart', icon: Icons.flutter_dash),
                        SkillChip(label: 'Flutter', icon: Icons.phone_android),
                        SkillChip(label: 'C#', icon: Icons.desktop_windows),
                        SkillChip(label: 'Python', icon: Icons.terminal),
                        SkillChip(label: 'Java', icon: Icons.coffee),
                        SkillChip(label: 'Arduino', icon: Icons.memory),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),

            // ─── Sección Hobbies ───────────────────────────────────
            Row(
              children: [
                const Icon(
                  Icons.sports_esports,
                  color: AppTheme.primaryColor,
                  size: 24,
                ),
                const SizedBox(width: 8),
                Text(
                  'Hobbies',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(20),
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
                    const SizedBox(height: 24),
                    const Wrap(
                      spacing: 8,
                      runSpacing: 12,
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
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
