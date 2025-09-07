//
// View — пользовательский интерфейс

// Отвечает за отображение данных

// Обрабатывает пользовательский ввод

// Не содержит бизнес-логики

// В Flutter представлен виджетами
//

import 'package:flutter/material.dart';
import 'package:manual_qa_helper/pages/homepage/homepage_viewmodel.dart';
import 'package:manual_qa_helper/pages/settings/settings_viewmodel.dart';

class HomePageView extends StatefulWidget {
  final SettingsViewModel viewModel;
  const HomePageView({super.key, required this.viewModel});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late HomepageViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = HomepageViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_viewModel.title)),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: _viewModel.menuItems.length,
          itemBuilder: (context, index) {
            final item = _viewModel.menuItems[index];

            return ListTile(
              title: Text(item.title),
              onTap: () {
                Navigator.pushNamed(context, item.route);
              },
            );
          },
        ),
      ),
    );
  }
}
