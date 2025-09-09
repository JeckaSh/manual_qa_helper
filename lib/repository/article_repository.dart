import 'package:manual_qa_helper/models/article_model.dart';
///
/// Репозиторий со всеми статьями
/// 
class ArticleRepository {
  static final List<ArticleModel> _articles = [
    ArticleModel(id: 1, title: 'Тест', content: 'Пук пук'),
    ArticleModel(id: 2, title: 'Тест1', content: 'Пук пук12'),
    ArticleModel(id: 3, title: 'Тест2', content: 'Пук пу12414к'),
    ArticleModel(id: 4, title: 'Тест3', content: 'Пук пук123123'),
  ];

  static List<ArticleModel> getAllArticles() => _articles;
  static ArticleModel getById(int id) {
    return _articles.firstWhere((articles) => articles.id == id);
  }
}
