import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manual_qa_helper/controllers/theme_controller.dart';
import 'package:manual_qa_helper/pages/homepage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final ThemeController _themeController = Get.find();

  backButton() {
    Get.off(() => Homepage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Настройки')),
      body: SafeArea(
        child: Column(
          children: [
            Obx(
              () => SwitchListTile(
                title: Text('Тёмная тема'),
                value: _themeController.isDarkMode.value,
                onChanged: (value) => _themeController.toggleTheme(),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: backButton,
                  child: Text('Назад'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
