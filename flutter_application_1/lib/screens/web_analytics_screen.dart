import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class WebAnalyticsScreen extends StatelessWidget {
  const WebAnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Valley Metro Analytics Dashboard'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSummaryCard(),
            const SizedBox(height: 20),
            _buildRouteOptimizationSection(),
            const SizedBox(height: 20),
            _buildRiderFeedbackSection(),
            const SizedBox(height: 20),
            _buildRidershipPatternsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'SUICA App Usage Insights',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatItem('Active Users', '12,458'),
                _buildStatItem('Avg. Trips/User', '4.2'),
                _buildStatItem('Digital Card Usage', '68%'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(BuildContext context, String label, String value) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildRouteOptimizationSection() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Route Optimization Opportunities',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            _buildOptimizationItem(
              'Route 7 - Downtown Express',
              'Add 10-minute frequency during 7-9 AM',
              'Data shows 85% of digital card users experience overcrowding',
            ),
            _buildOptimizationItem(
              'Route 12 - Tempe Loop',
              'Extend service to 11 PM on weekdays',
              '45% of digital card transactions occur after 8 PM',
            ),
            _buildOptimizationItem(
              'Route 29 - Sky Harbor',
              'Add express service during peak hours',
              'Data indicates 60% of users are airport commuters',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptimizationItem(String route, String suggestion, String reason) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            route,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            suggestion,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            reason,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRiderFeedbackSection() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Digital Card User Insights',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            _buildFeedbackItem(
              'Payment Preferences',
              '78% of SUICA users prefer digital card over cash',
              'Based on 8,500+ transactions',
            ),
            _buildFeedbackItem(
              'Peak Usage Times',
              'Highest digital card usage: 7:30-8:30 AM',
              '45% of morning commuters use SUICA',
            ),
            _buildFeedbackItem(
              'Route Popularity',
              'Most popular route: Downtown Express (Route 7)',
              '32% of all SUICA transactions',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeedbackItem(String category, String feedback, String percentage) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            feedback,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            percentage,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRidershipPatternsSection() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ridership Patterns & Trends',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            _buildPatternItem(
              'Commuter Behavior',
              'Average trip duration: 28 minutes',
              'Peak hours: 7-9 AM, 4-6 PM',
            ),
            _buildPatternItem(
              'Digital Adoption',
              'Weekly growth in SUICA users: 12%',
              'Most new users: 25-34 age group',
            ),
            _buildPatternItem(
              'Revenue Impact',
              'Digital transactions up 45% since launch',
              'Average fare: \$2.50',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPatternItem(String title, String data, String context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            data,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            context,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
} 