import 'package:flutter/material.dart';

class Skill {
  final String name;
  final double level; // 0.0 – 1.0
  const Skill(this.name, this.level);
}

class Project {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  const Project(this.title, this.description, this.icon, this.color);
}

/// All portfolio content in one place — change it here, it updates everywhere.
class PortfolioData {
  PortfolioData._();

  static const name = 'Kiran Saleem';
  static const title = 'Flutter Developer';
  static const intro =
      'I build beautiful, high-performance cross-platform apps with Flutter and Dart.';
  static const about =
      'I am a mobile developer with 2+ years of experience crafting apps for startups '
      'and open-source projects. I care deeply about clean architecture, smooth animations, '
      'and pixel-perfect UI. When I am not coding, I contribute to the Flutter community '
      'and write technical articles.';
  static const email = 'kiransaleem@gmail.com';
  static const phone = '+92 234 567 890';
  static const location = 'Karachi, Pakistan';

  static const skills = [
    Skill('Flutter', 0.90),
    Skill('Dart', 0.85),
    Skill('Firebase', 0.75),
    Skill('UI/UX Design', 0.80),
    Skill('REST APIs', 0.70),
  ];

  static const projects = [
    Project(
      'Task Manager App',
      'A productivity app with task scheduling, reminders and cloud sync, built with Flutter & Firebase.',
      Icons.checklist_rounded,
      Colors.teal,
    ),
    Project(
      'Home Automation app',
      'Home Automation app with interactive charts and full dark-mode support.',
      Icons.electric_meter_outlined,
      Colors.orange,
    ),
    Project(
      'E-Commerce Store',
      'An online shop with cart, checkout and order tracking — one codebase for three platforms.',
      Icons.shopping_bag_outlined,
      Colors.deepPurple,
    ),
  ];
}
