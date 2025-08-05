import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goroutersample/route_constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Center(
            child: Column(
              children: [
                Icon(Icons.settings, size: 100, color: Colors.deepPurple),
                SizedBox(height: 20),
                Text(
                  'Settings Screen',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Configure your app preferences',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Card(
            child: ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              subtitle: const Text('Manage notification preferences'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle notifications settings
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.security),
              title: const Text('Privacy'),
              subtitle: const Text('Privacy and security settings'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle privacy settings
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Language'),
              subtitle: const Text('Change app language'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle language settings
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help & Support'),
              subtitle: const Text('Get help and contact support'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                context.goNamed(MyPage.help.toName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
