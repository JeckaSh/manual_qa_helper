//
// Model — слой данных и бизнес-логики

// Хранит и обрабатывает данные

// Реализует валидацию

// Работает с API и базами данных

// Не содержит логики отображения
// 

class HomepageModel {
  final String title;
  final List<MenuItem> menuItems;

  HomepageModel({required this.title, required this.menuItems});
}

class MenuItem {
  final String title;
  final String route;

  MenuItem({required this.title, required this.route});
}