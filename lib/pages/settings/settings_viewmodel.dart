import 'package:flutter/material.dart';
import 'package:manual_qa_helper/pages/settings/settings_model.dart';

class SettingsViewModel extends ChangeNotifier {
  String get title => _title;
  final String _title = 'Настройки';

  final SettingsModel _settingRepository;
  bool _isDark = false;

  SettingsViewModel(this._settingRepository);

  bool get isDark => _isDark;

  Future<void> init() async {
    _isDark = await _settingRepository.loadTheme();
    notifyListeners();
  }

  Future<void> toggleTheme() async {
    _isDark = !_isDark;
    await _settingRepository.saveTheme(_isDark);
    notifyListeners();
  }
}
