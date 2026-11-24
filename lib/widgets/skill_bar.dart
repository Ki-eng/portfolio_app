import 'package:flutter/material.dart';

class SkillBar extends StatelessWidget {
  final String name;
  // 0.0 – 1.0
  final double level;

  const SkillBar({super.key, required this.name, required this.level});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    final muted = Theme.of(context).colorScheme.onSurfaceVariant;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text('${(level * 100).round()}%', style: TextStyle(color: muted)),
            ],
          ),
          const SizedBox(height: 6),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: level,
              minHeight: 8,
              backgroundColor: primary.withOpacity(0.15),
              valueColor: AlwaysStoppedAnimation<Color>(primary),
            ),
          ),
        ],
      ),
    );
  }
}
