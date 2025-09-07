import 'package:flutter/material.dart';
import 'package:manual_qa_helper/pages/about_app/about_app_viewmodel.dart';
import 'package:manual_qa_helper/pages/settings/settings_viewmodel.dart';

class AboutAppView extends StatefulWidget {
  final SettingsViewModel viewModel;
  const AboutAppView({super.key, required this.viewModel});

  @override
  State<AboutAppView> createState() => _AboutAppViewState();
}

class _AboutAppViewState extends State<AboutAppView> {
  late AboutAppViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = AboutAppViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(viewModel.title)),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              'Это приложение-шпаргалка по ручному тестированию ПО для начинающих специалистов',
            ),
            SizedBox(height: 10),
            Text('По всем вопросом можно написать на почту:'),
            SizedBox(height: 5),
            Text('email: ${viewModel.contacts}'),
          ],
        ),
      ),
    );
  }
}
