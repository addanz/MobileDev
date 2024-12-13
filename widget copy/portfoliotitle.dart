import 'package:flutter/material.dart';

class PortfolioTile extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const PortfolioTile({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 40),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(description),
    );
  }
}
