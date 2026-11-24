import 'package:flutter/material.dart';
import 'package:portfolio_app/data/portfolio_data.dart';
import 'package:portfolio_app/widgets/section_title.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).colorScheme.onSurfaceVariant;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SectionTitle(icon: Icons.person_outline, title: 'About Me'),
        const SizedBox(height: 8),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              PortfolioData.about,
              style: TextStyle(height: 1.7, fontSize: 15, color: muted),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _Stat(value: '2+', label: 'Years Exp.'),
                _Stat(value: '16', label: 'Projects'),
                _Stat(value: '7', label: 'Clients'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Stat extends StatelessWidget {
  final String value;
  final String label;
  const _Stat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: primary,
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
