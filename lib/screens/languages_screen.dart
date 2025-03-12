// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/core/widgets/custom_appbar.dart';

class LanguagesScreen extends StatefulWidget {
  final Function(Locale) onLocaleChange;

  const LanguagesScreen({super.key, required this.onLocaleChange});

  @override
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  String _selectedLanguage = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Languages',
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: AppTheme.light.colorScheme.secondary,
          ),
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
