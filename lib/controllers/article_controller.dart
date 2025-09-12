import 'package:get/get.dart';
import 'package:manual_qa_helper/models/article_model.dart';
import 'package:manual_qa_helper/repository/article_repository.dart';

class ArticleController extends GetxController {
  List<ArticleModel> get articles => ArticleRepository.getAllArticles();
  List<ArticleModel> get gitArticles => ArticleRepository.getAllGitArticles();

  ArticleModel getArticleById(int id) => ArticleRepository.getById(id);

  int getArticleIndex(int id) {
    return articles.indexWhere((articles) => articles.id == id);
  }
}
