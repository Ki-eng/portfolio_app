import 'package:flutter/material.dart';
import 'package:portfolio_app/data/portfolio_data.dart';
import 'package:portfolio_app/widgets/profile_header.dart';
import 'package:portfolio_app/widgets/section_title.dart';
import 'package:portfolio_app/widgets/skill_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const ProfileHeader(),
        const SizedBox(height: 24),
        const SectionTitle(icon: Icons.code, title: 'Skills'),
        const SizedBox(height: 8),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                for (final skill in PortfolioData.skills)
                  SkillBar(name: skill.name, level: skill.level),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
