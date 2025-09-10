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

  @override
  Widget build(BuildContext context) {
    final int articleId = Get.arguments;
    final ArticleModel article = _articleController.getArticleById(articleId);
    return Scaffold(
      appBar: AppBar(title: Text(article.title)),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: article.content),
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
}
