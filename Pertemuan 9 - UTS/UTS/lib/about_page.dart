import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Page')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('This is a simple Flutter application demonstrating navigation and state management.'),
        ),
      ),
    );
  }
}