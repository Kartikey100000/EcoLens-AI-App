import 'package:flutter/material.dart';
import 'report_screen.dart';
import 'my_reports_screen.dart';
import 'map_screen.dart';
import 'dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.eco, color: Color(0xFF10B981)),
            SizedBox(width: 8),
            Text('EcoLens AI', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Home', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ReportScreen())),
            child: const Text('Report Issue', style: TextStyle(color: Colors.grey)),
          ),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MyReportsScreen())),
            child: const Text('Track Complaints', style: TextStyle(color: Colors.grey)),
          ),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MapScreen())),
            child: const Text('Campus Map', style: TextStyle(color: Colors.grey)),
          ),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DashboardScreen())),
            child: const Text('Dashboard', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF0F172A),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section matching website
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFF1E293B),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Together We Build a Cleaner,\nSafer and Smarter Campus',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white, height: 1.2),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Report campus problems instantly and help improve your university environment through transparency and rapid resolution.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2E7D32),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        ),
                        icon: const Icon(Icons.add_circle_outline),
                        label: const Text('Report Issue Now'),
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ReportScreen())),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white24),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        ),
                        child: const Text('View Complaints'),
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MyReportsScreen())),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Metrics Cards Row matching website dashboard
            const Text('Overview', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: MetricCard(title: 'TOTAL ACTIVE', count: '0', subtitle: 'In Progress', color: Colors.blueAccent)),
                const SizedBox(width: 12),
                Expanded(child: MetricCard(title: 'RESOLVED', count: '0', subtitle: 'Across all sectors', color: Colors.green)),
                const SizedBox(width: 12),
                Expanded(child: MetricCard(title: 'PENDING', count: '1', subtitle: 'Recently submitted', color: Colors.orange)),
              ],
            ),
            const SizedBox(height: 30),

            // Quick Access Buttons for Map & Admin Dashboard
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E293B),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      side: const BorderSide(color: Colors.white12),
                    ),
                    icon: const Icon(Icons.map, color: Color(0xFF10B981)),
                    label: const Text('View Campus Map'),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MapScreen())),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E293B),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      side: const BorderSide(color: Colors.white12),
                    ),
                    icon: const Icon(Icons.dashboard, color: Color(0xFF10B981)),
                    label: const Text('Admin Dashboard'),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DashboardScreen())),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MetricCard extends StatelessWidget {
  final String title;
  final String count;
  final String subtitle;
  final Color color;

  const MetricCard({super.key, required this.title, required this.count, required this.subtitle, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color)),
          const SizedBox(height: 10),
          Text(count, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 6),
          Text(subtitle, style: const TextStyle(fontSize: 11, color: Colors.grey)),
        ],
      ),
    );
  }
}