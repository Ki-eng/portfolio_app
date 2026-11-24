import 'package:flutter/material.dart';

// contact row: icon, label, value.
class ContactTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final VoidCallback? onTap;

  const ContactTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    final muted = Theme.of(context).colorScheme.onSurfaceVariant;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: primary),
      ),
      title: Text(label, style: TextStyle(fontSize: 13, color: muted)),
      subtitle: Text(
        value,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      onTap: onTap,
    );
  }
}
