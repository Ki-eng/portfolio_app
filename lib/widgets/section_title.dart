import 'package:flutter/material.dart';

// Reusable section heading with icon — adapts to light/dark automatically.
class SectionTitle extends StatelessWidget {
  final IconData icon;
  final String title;

  const SectionTitle({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return Row(
      children: [
        Icon(icon, color: primary),
        const SizedBox(width: 8),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
