import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/app_theme.dart';
import 'package:flutter_clean_architecture/presentation/base/base_page_mixin.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> with BasePageMixin {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final isDarkMode = themeNotifier.getTheme() == AppTheme.darkTheme;
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Settings'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Text('Dark Mode'),
            const Spacer(),
            Switch(
              value: isDarkMode,
              onChanged: (value) {
                themeNotifier
                    .setTheme(value ? AppTheme.darkTheme : AppTheme.lightTheme);
              },
            ),
          ],
        ),
      ),
    );
  }
}
