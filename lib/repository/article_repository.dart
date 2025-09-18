import 'package:manual_qa_helper/models/article_model.dart';
import 'package:manual_qa_helper/repository/manual_qa_articles.dart';

///
/// Репозиторий со всеми статьями
///
class ArticleRepository {
  static final List<ArticleModel> _articles = [
    ArticleModel(
      id: 1,
      title: 'Введение в тестирование ПО',
      content: ManualQaArticles.article1,
    ),
    ArticleModel(
      id: 2,
      title: 'История тестирования',
      content: ManualQaArticles.article2,
    ),
    ArticleModel(
      id: 3,
      title: 'Что такое тестирование',
      content: ManualQaArticles.article3,
    ),
    ArticleModel(
      id: 4,
      title: 'Основные понятия в тестировании',
      content: ManualQaArticles.article4,
    ),
    ArticleModel(
      id: 5,
      title: 'Цели тестирования',
      content: ManualQaArticles.article5,
    ),
    ArticleModel(
      id: 6,
      title: 'Цикл тестирования ПО',
      content: ManualQaArticles.article6,
    ),
    ArticleModel(
      id: 7,
      title: 'Уровни и типы тестирования',
      content: ManualQaArticles.article7,
    ),
    ArticleModel(
      id: 8,
      title: 'Функциональное тестирование',
      content: ManualQaArticles.article8,
    ),
    ArticleModel(
      id: 9,
      title: 'Тестирование пользовательского интерфейса',
      content: ManualQaArticles.article9,
    ),
    ArticleModel(
      id: 10,
      title: 'Нефункциональное тестирование',
      content: ManualQaArticles.article10,
    ),
    ArticleModel(
      id: 11,
      title: 'Тестирование производительности',
      content: ManualQaArticles.article11,
    ),
    ArticleModel(
      id: 12,
      title: 'Тестирование удобства пользования',
      content: ManualQaArticles.article12,
    ),
    ArticleModel(
      id: 13,
      title: 'Тестирование безопасности',
      content: ManualQaArticles.article13,
    ),
    ArticleModel(
      id: 14,
      title: 'Санитарное тестирование',
      content: ManualQaArticles.article14,
    ),
    ArticleModel(
      id: 15,
      title: 'Дымовое тестирование',
      content: ManualQaArticles.article15,
    ),
    ArticleModel(
      id: 16,
      title: 'Тестирование сборки',
      content: ManualQaArticles.article16,
    ),
    ArticleModel(
      id: 17,
      title: 'Регрессионное тестирование',
      content: ManualQaArticles.article17,
    ),
    ArticleModel(
      id: 18,
      title: 'Тестирование установки',
      content: ManualQaArticles.article18,
    ),
    ArticleModel(
      id: 19,
      title: 'Тестирование локализации',
      content: ManualQaArticles.article19,
    ),
    ArticleModel(
      id: 20,
      title: 'Конфигурационное тестирование',
      content: ManualQaArticles.article20,
    ),
    ArticleModel(
      id: 21,
      title: 'Тестирование доступности',
      content: ManualQaArticles.article21,
    ),
    ArticleModel(
      id: 22,
      title: 'Выводы по теме введение в тестирование',
      content: ManualQaArticles.article22,
    ),
  ];

  static final List<ArticleModel> _gitArticles = [];

  static List<ArticleModel> getAllArticles() => _articles;
  static ArticleModel getById(int id) {
    return _articles.firstWhere((articles) => articles.id == id);
  }

  static List<ArticleModel> getAllGitArticles() => _gitArticles;
  static ArticleModel getGitArticleById(int id) {
    return _gitArticles.firstWhere((gitArticles) => gitArticles.id == id);
  }
}
