import 'package:flutter/material.dart';
import 'package:portfolio_app/controller/theme_controller.dart';
import 'package:portfolio_app/data/portfolio_data.dart';
import 'package:portfolio_app/screens/about_screen.dart';
import 'package:portfolio_app/screens/contact_screen.dart';
import 'package:portfolio_app/screens/home_screen.dart';
import 'package:portfolio_app/screens/project_screen.dart';
import 'package:portfolio_app/widgets/contact_title.dart';

class PortfolioScreen extends StatefulWidget {
  final ThemeController themeController;

  const PortfolioScreen({super.key, required this.themeController});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  int _currentIndex = 0; // 0 Home, 1 About, 2 Projects, 3 Contact

  final _titles = const ['Home', 'About', 'Projects', 'Contact'];
  final _bodies = const [
    HomeScreen(),
    AboutScreen(),
    ProjectScreen(),
    ContactScreen(),
  ];

  // FAB: contact bottom sheet
  void _showContactSheet() {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Get in touch',
                  textAlign: TextAlign.center,
                  style: Theme.of(sheetContext).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                ContactTile(
                  icon: Icons.email_outlined,
                  label: 'Email',
                  value: PortfolioData.email,
                  onTap: () => Navigator.pop(sheetContext),
                ),
                ContactTile(
                  icon: Icons.phone_outlined,
                  label: 'Phone',
                  value: PortfolioData.phone,
                  onTap: () => Navigator.pop(sheetContext),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        actions: [
          // Dark / light theme toggle
          ListenableBuilder(
            listenable: widget.themeController,
            builder: (context, _) {
              final isDark = widget.themeController.isDark;
              return IconButton(
                tooltip: isDark
                    ? 'Switch to light mode'
                    : 'Switch to dark mode',
                icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
                onPressed: widget.themeController.toggleTheme,
              );
            },
          ),
        ],
      ),
      // ConstrainedBox keeps content readable
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: _bodies[_currentIndex],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showContactSheet,
        tooltip: 'Contact',
        child: const Icon(Icons.mail_outline),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            activeIcon: Icon(Icons.work),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail_outlined),
            activeIcon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
