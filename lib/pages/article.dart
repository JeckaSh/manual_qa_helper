import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manual_qa_helper/controllers/article_controller.dart';
import 'package:manual_qa_helper/models/article_model.dart';
import 'package:manual_qa_helper/pages/manual_qa.dart';

class Article extends StatelessWidget {
  Article({super.key});

  final ArticleController _articleController = Get.find();

  backButton() {
    Get.off(() => ManualQaPage());
  }

  // Навигация по статьям
  void _navigateArticle(int direction) {
    final int currentId = Get.arguments;
    final int currentIndex = _articleController.articles.indexWhere(
      (article) => article.id == currentId,
    );

    if (currentIndex == -1) return;

    final int newIndex = currentIndex + direction;
    if (newIndex >= 0 && newIndex < _articleController.articles.length) {
      Get.offAll(
        () => Article(),
        arguments: _articleController.articles[newIndex].id,
      );
    }
  }
  // Конец навигации по статьям

  @override
  Widget build(BuildContext context) {
    final int articleId = Get.arguments;
    final ArticleModel article = _articleController.getArticleById(articleId);
    //
    final int totalArticles = _articleController.articles.length;
    final int currentIndex =
        _articleController.articles.indexWhere((a) => a.id == articleId) + 1;
    //
    return Scaffold(
      appBar: AppBar(title: Text(article.title)),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: article.content),
            _buildNavigationPanel(currentIndex, totalArticles),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: backButton,
                  child: Text('Назад'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationPanel(int current, int total) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: current > 1 ? () => _navigateArticle(-1) : null,
            child: Icon(Icons.arrow_left),
          ),
          Text('$current / $total'),
          ElevatedButton(
            onPressed: current < total ? () => _navigateArticle(1) : null,
            child: Icon(Icons.arrow_right),
          ),
        ],
      ),
    );
  }
}
