import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Support'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Center(
            child: Column(
              children: [
                Icon(Icons.help_outline, size: 100, color: Colors.deepPurple),
                SizedBox(height: 20),
                Text(
                  'Help & Support',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Get the help you need',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Card(
            child: ListTile(
              leading: const Icon(Icons.question_answer),
              title: const Text('FAQ'),
              subtitle: const Text('Frequently asked questions'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle FAQ navigation
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.contact_support),
              title: const Text('Contact Support'),
              subtitle: const Text('Get in touch with our support team'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle contact support
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.book),
              title: const Text('User Guide'),
              subtitle: const Text('Learn how to use the app'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle user guide
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.bug_report),
              title: const Text('Report a Bug'),
              subtitle: const Text('Report issues or bugs'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle bug report
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.feedback),
              title: const Text('Send Feedback'),
              subtitle: const Text('Share your thoughts with us'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle feedback
              },
            ),
          ),
        ],
      ),
    );
  }
}
