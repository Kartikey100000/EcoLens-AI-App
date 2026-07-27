import 'package:flutter/material.dart';
import 'screens/auth_screen.dart';

void main() {
  runApp(const EcoLensApp());
}

class EcoLensApp extends StatelessWidget {
  const EcoLensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoLens AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        primaryColor: const Color(0xFF2E7D32),
        colorScheme: ColorScheme.dark(
          primary: const Color(0xFF2E7D32),
          secondary: const Color(0xFF10B981),
          surface: const Color(0xFF1E293B),
        ),
        useMaterial3: true,
      ),
      home: const AuthScreen(),
    );
  }
}