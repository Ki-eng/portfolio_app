import 'package:flutter/material.dart';
import 'package:portfolio_app/data/portfolio_data.dart';
import 'package:portfolio_app/widgets/contact_title.dart';
import 'package:portfolio_app/widgets/section_title.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SectionTitle(icon: Icons.contact_mail_outlined, title: 'Contact'),
        const SizedBox(height: 8),
        Card(
          child: Column(
            children: const [
              ContactTile(
                icon: Icons.email_outlined,
                label: 'Email',
                value: PortfolioData.email,
              ),
              Divider(height: 1),
              ContactTile(
                icon: Icons.phone_outlined,
                label: 'Phone',
                value: PortfolioData.phone,
              ),
              Divider(height: 1),
              ContactTile(
                icon: Icons.location_on_outlined,
                label: 'Location',
                value: PortfolioData.location,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(Icons.circle, size: 12, color: Colors.green[400]),
                const SizedBox(width: 8),
                const Text('Available for freelance work'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
