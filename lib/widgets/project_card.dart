import 'package:flutter/material.dart';
import 'package:portfolio_app/data/portfolio_data.dart';

// Project card with image placeholder, title and description.
class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).colorScheme.onSurfaceVariant;

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image placeholder
          Container(
            height: 140,
            width: double.infinity,
            color: project.color.withOpacity(0.15),
            child: Icon(project.icon, size: 56, color: project.color),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: Theme.of(context).textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  project.description,
                  style: TextStyle(color: muted, height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
