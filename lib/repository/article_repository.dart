import 'package:manual_qa_helper/models/article_model.dart';
import 'package:manual_qa_helper/repository/manual_qa_articles.dart';

///
/// Репозиторий со всеми статьями
///
class ArticleRepository {
  static final List<ArticleModel> _articles = [
    ArticleModel(
      id: 1,
      title: 'Пояснения к статьям',
      content: ManualQaArticles.article1,
    ),
    ArticleModel(
      id: 2,
      title: 'Введение в тестирование ПО',
      content: ManualQaArticles.article2,
    ),
    ArticleModel(
      id: 3,
      title: 'История тестирования',
      content: ManualQaArticles.article3,
    ),
    ArticleModel(
      id: 4,
      title: 'Что такое тестирование',
      content: ManualQaArticles.article4,
    ),
    ArticleModel(
      id: 5,
      title: 'Основные понятия в тестировании',
      content: ManualQaArticles.article5,
    ),
    ArticleModel(
      id: 6,
      title: 'Цели тестирования',
      content: ManualQaArticles.article6,
    ),
    ArticleModel(
      id: 7,
      title: 'Цикл тестирования ПО',
      content: ManualQaArticles.article7,
    ),
    ArticleModel(
      id: 8,
      title: 'Уровни и типы тестирования',
      content: ManualQaArticles.article8,
    ),
    ArticleModel(
      id: 9,
      title: 'Функциональное тестирование',
      content: ManualQaArticles.article9,
    ),
    ArticleModel(
      id: 10,
      title: 'Тестирование пользовательского интерфейса',
      content: ManualQaArticles.article10,
    ),
    ArticleModel(
      id: 11,
      title: 'Нефункциональное тестирование',
      content: ManualQaArticles.article11,
    ),
    ArticleModel(
      id: 12,
      title: 'Тестирование производительности',
      content: ManualQaArticles.article12,
    ),
    ArticleModel(
      id: 13,
      title: 'Нагрузочное тестирование',
      content: ManualQaArticles.article13,
    ),

    ArticleModel(
      id: 14,
      title: 'Объёмное тестирование',
      content: ManualQaArticles.article14,
    ),

    ArticleModel(
      id: 15,
      title: 'Стрессовое тестирование',
      content: ManualQaArticles.article15,
    ),
    ArticleModel(
      id: 16,
      title: 'Тестирование удобства пользования',
      content: ManualQaArticles.article16,
    ),
    ArticleModel(
      id: 17,
      title: 'Тестирование безопасности',
      content: ManualQaArticles.article17,
    ),
    ArticleModel(
      id: 18,
      title: 'Санитарное тестирование',
      content: ManualQaArticles.article18,
    ),
    ArticleModel(
      id: 19,
      title: 'Дымовое тестирование',
      content: ManualQaArticles.article19,
    ),
    ArticleModel(
      id: 20,
      title: 'Тестирование сборки',
      content: ManualQaArticles.article20,
    ),
    ArticleModel(
      id: 21,
      title: 'Регрессионное тестирование',
      content: ManualQaArticles.article21,
    ),
    ArticleModel(
      id: 22,
      title: 'Тестирование установки',
      content: ManualQaArticles.article22,
    ),
    ArticleModel(
      id: 23,
      title: 'Тестирование локализации',
      content: ManualQaArticles.article23,
    ),
    ArticleModel(
      id: 24,
      title: 'Конфигурационное тестирование',
      content: ManualQaArticles.article24,
    ),
    ArticleModel(
      id: 25,
      title: 'Тестирование доступности',
      content: ManualQaArticles.article25,
    ),
    ArticleModel(
      id: 26,
      title: 'Выводы по теме введение в тестирование',
      content: ManualQaArticles.article26,
    ),
    ArticleModel(
      id: 27,
      title: 'Введение в тест-дизайн',
      content: ManualQaArticles.article27,
    ),
    ArticleModel(
      id: 28,
      title: 'Методы чёрного ящика',
      content: ManualQaArticles.article28,
    ),
    ArticleModel(
      id: 29,
      title: 'Эквивалентные значения',
      content: ManualQaArticles.article29,
    ),
    ArticleModel(
      id: 30,
      title: 'Граничные значения',
      content: ManualQaArticles.article30,
    ),
    ArticleModel(
      id: 31,
      title: 'Тестирование критического пути',
      content: ManualQaArticles.article31,
    ),
    ArticleModel(
      id: 32,
      title: 'Тестирование на основе таблиц принятия решений',
      content: ManualQaArticles.article32,
    ),
    ArticleModel(
      id: 33,
      title: 'Таблицы переходов',
      content: ManualQaArticles.article33,
    ),
    ArticleModel(
      id: 34,
      title: 'Тестирование с помощью вариантов использования',
      content: ManualQaArticles.article34,
    ),
    ArticleModel(
      id: 35,
      title: 'Методы белого ящика',
      content: ManualQaArticles.article35,
    ),
    ArticleModel(
      id: 36,
      title: 'Unit тесты',
      content: ManualQaArticles.article36,
    ),
    ArticleModel(
      id: 37,
      title: 'Интеграционные проверки',
      content: ManualQaArticles.article37,
    ),
    ArticleModel(
      id: 38,
      title: 'Системное тестирование компонентов',
      content: ManualQaArticles.article38,
    ),
    ArticleModel(
      id: 39,
      title: 'Безопасность функционирования ПО',
      content: ManualQaArticles.article39,
    ),
    ArticleModel(
      id: 40,
      title: 'Метод серого ящика',
      content: ManualQaArticles.article40,
    ),
    ArticleModel(
      id: 41,
      title: 'На основе опыта',
      content: ManualQaArticles.article41,
    ),
    ArticleModel(
      id: 42,
      title: 'Метод предположения об ошибках',
      content: ManualQaArticles.article42,
    ),
    ArticleModel(
      id: 43,
      title: 'Метод исследовательского тестирования ad-hoc тестирование',
      content: ManualQaArticles.article43,
    ),
    ArticleModel(
      id: 44,
      title: 'Тестирование на основе чек-листов',
      content: ManualQaArticles.article44,
    ),
    ArticleModel(
      id: 45,
      title: 'Вывод по теме тест-дизайн',
      content: ManualQaArticles.article45,
    ),
    ArticleModel(
      id: 46,
      title: 'Артефакты тестирования. Тестовая документация',
      content: ManualQaArticles.article46,
    ),
    ArticleModel(
      id: 47,
      title: 'Тест-план',
      content: ManualQaArticles.article47,
    ),
    ArticleModel(
      id: 48,
      title: 'Чеклисты',
      content: ManualQaArticles.article48,
    ),
    ArticleModel(
      id: 49,
      title: 'Тест-кейсы',
      content: ManualQaArticles.article49,
    ),
    ArticleModel(
      id: 50,
      title: 'Тест-сьюты',
      content: ManualQaArticles.article50,
    ),
    ArticleModel(
      id: 51,
      title: 'Артефакты тестирования. Дефекты',
      content: ManualQaArticles.article51,
    ),
    ArticleModel(
      id: 52,
      title: 'Баг-репорт',
      content: ManualQaArticles.article52,
    ),
    ArticleModel(
      id: 53,
      title: 'Оформление баг-репортов',
      content: ManualQaArticles.article53,
    ),
    ArticleModel(
      id: 54,
      title: 'Градация серьёзности баг-репортов',
      content: ManualQaArticles.article54,
    ),
    ArticleModel(
      id: 55,
      title: 'Типы багов',
      content: ManualQaArticles.article55,
    ),
    ArticleModel(
      id: 56,
      title: 'Локализация дефектов',
      content: ManualQaArticles.article56,
    ),
    ArticleModel(
      id: 57,
      title: 'Отчёты о тестировании',
      content: ManualQaArticles.article57,
    ),
    ArticleModel(
      id: 58,
      title: 'Тестирование требований',
      content: ManualQaArticles.article58,
    ),
    ArticleModel(
      id: 59,
      title: 'Инструменты тестирования',
      content: ManualQaArticles.article59,
    ),
    ArticleModel(
      id: 60,
      title: 'Основы клиент-серверного взаимодействия',
      content: ManualQaArticles.article60,
    ),
    ArticleModel(
      id: 61,
      title: 'Клиент и сервер',
      content: ManualQaArticles.article61,
    ),
    ArticleModel(
      id: 62,
      title: 'Основы веб-технологий',
      content: ManualQaArticles.article62,
    ),
    ArticleModel(
      id: 63,
      title: 'Взаимодействие клиента и сервера',
      content: ManualQaArticles.article63,
    ),
    ArticleModel(
      id: 64,
      title: 'Основы SQL',
      content: ManualQaArticles.article64,
    ),
    ArticleModel(
      id: 65,
      title: 'DevTools для тестировщика',
      content: ManualQaArticles.article65,
    ),
    ArticleModel(
      id: 66,
      title: 'Панель Elements',
      content: ManualQaArticles.article66,
    ),
    ArticleModel(
      id: 67,
      title: 'Панель Console',
      content: ManualQaArticles.article67,
    ),
    ArticleModel(
      id: 68,
      title: 'Панель Sources',
      content: ManualQaArticles.article68,
    ),
    ArticleModel(
      id: 69,
      title: 'Панель Network',
      content: ManualQaArticles.article69,
    ),
    ArticleModel(
      id: 70,
      title: 'Особенности тестирования web-приложений',
      content: ManualQaArticles.article70,
    ),
    ArticleModel(
      id: 71,
      title: 'Особенности тестирования клиент-сервера',
      content: ManualQaArticles.article71,
    ),
    ArticleModel(
      id: 72,
      title: 'API-тестирование',
      content: ManualQaArticles.article72,
    ),
    ArticleModel(
      id: 73,
      title: 'Инструменты тестирования API',
      content: ManualQaArticles.article73,
    ),
    ArticleModel(
      id: 74,
      title: 'Инструменты для нагрузочного тестирования',
      content: ManualQaArticles.article74,
    ),
    ArticleModel(
      id: 75,
      title: 'Инструменты для тестирования безопасности',
      content: ManualQaArticles.article75,
    ),
    ArticleModel(
      id: 76,
      title: 'Среды разработки',
      content: ManualQaArticles.article76,
    ),
    ArticleModel(
      id: 77,
      title: 'Виртуализация',
      content: ManualQaArticles.article77,
    ),
    ArticleModel(
      id: 78,
      title: 'Жизненный цикл разработки ПО',
      content: ManualQaArticles.article78,
    ),
    ArticleModel(
      id: 79,
      title: 'Модели разработки ПО',
      content: ManualQaArticles.article79,
    ),
    ArticleModel(
      id: 80,
      title: 'Методологии разработки ПО',
      content: ManualQaArticles.article80,
    ),
    ArticleModel(
      id: 81,
      title: 'Жизненный цикл дефекта',
      content: ManualQaArticles.article81,
    ),
  ];

  static List<ArticleModel> getAllArticles() => _articles;
  static ArticleModel getById(int id) {
    return _articles.firstWhere((articles) => articles.id == id);
  }
}
