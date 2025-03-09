import 'package:flutter/material.dart';

class LanguagesScreen extends StatefulWidget {
  final Function(Locale) onLocaleChange;

  const LanguagesScreen({Key? key, required this.onLocaleChange})
    : super(key: key);

  @override
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  String _selectedLanguage = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for help',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.flag),
              title: const Text('English'),
              trailing:
                  _selectedLanguage == 'en' ? const Icon(Icons.check) : null,
              onTap: () {
                setState(() => _selectedLanguage = 'en');
                widget.onLocaleChange(const Locale('en'));
              },
            ),
            ListTile(
              leading: const Icon(Icons.flag),
              title: const Text('Arabic'),
              trailing:
                  _selectedLanguage == 'ar' ? const Icon(Icons.check) : null,
              onTap: () {
                setState(() => _selectedLanguage = 'ar');
                widget.onLocaleChange(const Locale('ar'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
