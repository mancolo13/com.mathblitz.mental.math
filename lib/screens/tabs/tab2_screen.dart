import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Training Drills', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(title: Text('Multiplication Speed Sprints', style: TextStyle(color: Colors.white)), trailing: Text('Mastered', style: TextStyle(color: AppTheme.primary))),
          ListTile(title: Text('Two-digit Mental Subtraction', style: TextStyle(color: Colors.white)), trailing: Text('88% Accuracy', style: TextStyle(color: AppTheme.primary))),
        ],
      ),
    );
  }
}
