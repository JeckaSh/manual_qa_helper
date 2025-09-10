import 'package:manual_qa_helper/models/article_model.dart';
import 'package:manual_qa_helper/repository/manual_qa_articles.dart';

///
/// Репозиторий со всеми статьями
///
class ArticleRepository {
  static final List<ArticleModel> _articles = [
    ArticleModel(id: 1, title: 'Тест', content: ManualQaArticles.article1),
    ArticleModel(id: 2, title: 'Тест 2', content: ManualQaArticles.article2),
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
