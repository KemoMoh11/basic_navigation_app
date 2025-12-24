import 'package:flutter/material.dart';
import '../models/item_model.dart';
import 'detail_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Item> items = [
    Item(
      title: 'Project Alpha',
      subtitle: 'Mobile Development',
      description: 'A comprehensive mobile solution focused on user engagement and seamless performance.',
    ),
    Item(
      title: 'Design System',
      subtitle: 'UI/UX Design',
      description: 'Creating a unified language for web and mobile components to ensure brand consistency.',
    ),
    Item(
      title: 'Cloud Analytics',
      subtitle: 'Data Science',
      description: 'Analyzing large datasets in real-time to provide actionable business insights.',
    ),
    Item(
      title: 'Security Audit',
      subtitle: 'Cybersecurity',
      description: 'Ensuring that application protocols meet the highest safety standards and encryption levels.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard', style: TextStyle(fontWeight: FontWeight.w700)),
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.withOpacity(0.2)),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              title: Text(
                item.title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Text(
                item.subtitle,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Colors.indigo),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen(item: item)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}