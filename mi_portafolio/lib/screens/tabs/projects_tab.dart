import 'package:flutter/material.dart';
import '../../widgets/project_card.dart';

/// Pestaña "Proyectos" que muestra una lista de los proyectos destacados.
class ProjectsTab extends StatelessWidget {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 24),
      children: const [
        ProjectCard(
          projectName: 'Contador de Almas',
          description:
              'Aplicación móvil desarrollada como proyecto práctico '
              'para aprender el framework Flutter.',
          technology: 'Flutter / Dart',
          icon: Icons.phone_android,
        ),
        ProjectCard(
          projectName: 'Sistema de Gestión de Gimnasio',
          description:
              'Sistema de escritorio para la administración integral '
              'de un gimnasio, con interfaz gráfica en Windows Forms.',
          technology: 'C# / Windows Forms',
          icon: Icons.desktop_windows,
        ),
        ProjectCard(
          projectName: 'Electrónica con Arduino',
          description:
              'Proyectos de electrónica y automatización utilizando '
              'Arduino y Tinkercad con el temporizador 555.',
          technology: 'Arduino / Tinkercad',
          icon: Icons.memory,
        ),
      ],
    );
  }
}
