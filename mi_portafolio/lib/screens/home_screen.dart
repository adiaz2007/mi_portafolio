import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

// Importamos las futuras pestañas (se crearán en las siguientes fases)
// Por ahora usaremos contenedores vacíos para que compile
import 'tabs/about_tab.dart';
import 'tabs/skills_tab.dart';
import 'tabs/projects_tab.dart';

/// Pantalla principal del portafolio.
/// Contiene el BottomNavigationBar para navegar entre las diferentes
/// secciones (About, Habilidades, Proyectos).
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Índice de la pestaña actualmente seleccionada
  int _selectedIndex = 0;

  // Lista de widgets para cada pestaña
  final List<Widget> _tabs = [
    const AboutTab(),
    const SkillsTab(),
    const ProjectsTab(),
  ];

  // Títulos para el AppBar según la pestaña seleccionada
  final List<String> _tabTitles = [
    'Mi Portafolio',
    'Habilidades y Hobbies',
    'Proyectos Destacados',
  ];

  /// Maneja el cambio de pestaña en el BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tabTitles[_selectedIndex]),
        actions: [
          // Botón de configuración/usuario para ir a la firma
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            tooltip: 'Firma del Desarrollador',
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.signature);
            },
          ),
        ],
      ),
      // Muestra la pestaña correspondiente al índice seleccionado
      body: IndexedStack(
        index: _selectedIndex,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            activeIcon: Icon(Icons.article),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            activeIcon: Icon(Icons.work),
            label: 'Projects',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
