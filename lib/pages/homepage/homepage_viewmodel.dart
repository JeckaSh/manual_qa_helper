//
// ViewModel — связующее звено

// Управляет состоянием View

// Преобразует данные из Model

// Обрабатывает команды пользователя

// Содержит бизнес-логику
//

import 'package:manual_qa_helper/pages/homepage/homepage_model.dart';

class HomepageViewModel {
  String get title => _title;
  List<MenuItem> get menuItems => _menuItems;

  final String _title = 'Manual QA Helper';
  final List<MenuItem> _menuItems = [
    MenuItem(title: 'Ручное тестирование', route: '/manual_qa'),
    MenuItem(title: 'GIT для тестировщика', route: '/git_for_qa'),
    MenuItem(title: 'Настройки', route: '/settings'),
    MenuItem(title: 'О приложении', route: '/about_app'),
  ];
}
