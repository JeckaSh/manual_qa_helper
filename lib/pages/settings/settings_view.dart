import 'package:flutter/material.dart';
import 'package:manual_qa_helper/pages/settings/settings_viewmodel.dart';

class SettingsView extends StatefulWidget {
  final SettingsViewModel viewModel;
  const SettingsView({super.key, required this.viewModel});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.viewModel.title)),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListenableBuilder(
          listenable: widget.viewModel,
          builder: (context, _) {
            return Column(
              children: [
                SwitchListTile(
                  title: Text('Тёмная тема'),
                  value: widget.viewModel.isDark,
                  onChanged: (value) => widget.viewModel.toggleTheme(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
