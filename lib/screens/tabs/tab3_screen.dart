import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Math Blitz Rankings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(title: Text('1. MentalCalc_Zero', style: TextStyle(color: Colors.white)), trailing: Text('18,450 pts', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold))),
          ListTile(title: Text('2. TurboMath', style: TextStyle(color: Colors.white)), trailing: Text('16,210 pts', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
