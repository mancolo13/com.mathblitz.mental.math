import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  int _score = 420;
  int _streak = 5;
  String _eq = '24 × 3';
  int _correct = 72;

  void _answer(int val) {
    setState(() {
      if (val == _correct) {
        _score += 50 * _streak;
        _streak++;
        _eq = '87 - 39';
        _correct = 48;
      } else {
        _streak = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MathBlitz • Speed Duel', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.stars_rounded, color: AppTheme.secondary),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Score: $_score', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                Text('🔥 $_streak COMBO!', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppTheme.secondary)),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(24)),
              child: Center(
                child: Text('$_eq = ?', style: const TextStyle(fontSize: 44, fontWeight: FontWeight.bold, color: AppTheme.primary)),
              ),
            ),
            const SizedBox(height: 24),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 2.2,
              children: [64, 72, 48, 86].map((ans) => ElevatedButton(
                onPressed: () => _answer(ans),
                style: ElevatedButton.styleFrom(backgroundColor: AppTheme.surface, foregroundColor: Colors.white),
                child: Text('$ans', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
