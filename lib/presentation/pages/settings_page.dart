import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الإعدادات')),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.language),
            title: Text('اللغة'),
            trailing: Text('العربية'),
          ),
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text('الوضع الليلي'),
            trailing: Switch(value: false, onChanged: null),
          ),
        ],
      ),
    );
  }
}
