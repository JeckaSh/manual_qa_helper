import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manual_qa_helper/controllers/article_controller.dart';
import 'package:manual_qa_helper/pages/article.dart';
import 'package:manual_qa_helper/pages/homepage.dart';

class GitArticlesPage extends StatelessWidget {
  GitArticlesPage({super.key});

  final ArticleController _articleController = Get.find();

  @override
  Widget build(BuildContext context) {
    backButton() {
      Get.off(() => Homepage());
    }

    return Scaffold(
      appBar: AppBar(title: Text('GIT для тестировщиков')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _articleController.gitArticles.length,
                itemBuilder: (context, index) {
                  final article = _articleController.gitArticles[index];

                  return ListTile(
                    title: Text(article.title),
                    onTap: () => Get.off(Article(), arguments: article.id),
                  );
                },
              ),
            ),
            ElevatedButton(onPressed: backButton, child: Text('Назад')),
          ],
        ),
      ),
    );
  }
}
