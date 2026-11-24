import 'package:flutter/material.dart';
import 'package:portfolio_app/data/portfolio_data.dart';
import 'package:portfolio_app/widgets/project_card.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: PortfolioData.projects.length,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) =>
          ProjectCard(project: PortfolioData.projects[index]),
    );
  }
}
