import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileHeader(),
            const SizedBox(height: 20),
            _buildSettingsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.blue,
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'John Doe',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'john.doe@example.com',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // TODO: Implement edit profile
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
            ),
            child: const Text('Edit Profile'),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsList() {
    return Column(
      children: [
        _buildSettingsItem(
          icon: Icons.notifications,
          title: 'Notifications',
          onTap: () {
            // TODO: Implement notifications settings
          },
        ),
        _buildSettingsItem(
          icon: Icons.payment,
          title: 'Payment Methods',
          onTap: () {
            // TODO: Implement payment methods
          },
        ),
        _buildSettingsItem(
          icon: Icons.security,
          title: 'Security',
          onTap: () {
            // TODO: Implement security settings
          },
        ),
        _buildSettingsItem(
          icon: Icons.help,
          title: 'Help & Support',
          onTap: () {
            // TODO: Implement help & support
          },
        ),
        _buildSettingsItem(
          icon: Icons.info,
          title: 'About',
          onTap: () {
            // TODO: Implement about section
          },
        ),
        _buildSettingsItem(
          icon: Icons.logout,
          title: 'Logout',
          onTap: () {
            // TODO: Implement logout
          },
          textColor: Colors.red,
        ),
      ],
    );
  }

  Widget _buildSettingsItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? textColor,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: textColor ?? Colors.blue,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: textColor,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
} 