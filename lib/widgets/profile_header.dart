import 'package:flutter/material.dart';
import 'package:portfolio_app/data/portfolio_data.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    final muted = Theme.of(context).colorScheme.onSurfaceVariant;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            CircleAvatar(
              radius: 48,
              backgroundColor: primary.withOpacity(0.1),
              backgroundImage: const NetworkImage(
                'https://static.vecteezy.com/system/resources/previews/036/075/000/large_2x/ai-generated-portrait-of-a-beautiful-young-woman-posing-on-isolated-background-generative-ai-free-photo.jpg',
              ),
            ),
            const SizedBox(height: 12),
            Text(
              PortfolioData.name,
              style: Theme.of(context).textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(PortfolioData.title, style: TextStyle(color: muted)),
            const SizedBox(height: 12),
            Text(
              PortfolioData.intro,
              textAlign: TextAlign.center,
              style: TextStyle(color: muted, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
