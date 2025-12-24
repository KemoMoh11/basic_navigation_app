import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const BasicNavApp());
}

class BasicNavApp extends StatelessWidget {
  const BasicNavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professional Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
      ),
      home: MainScreen(),
    );
  }
}