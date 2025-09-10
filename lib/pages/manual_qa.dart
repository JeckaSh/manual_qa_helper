import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manual_qa_helper/controllers/article_controller.dart';
import 'package:manual_qa_helper/pages/article.dart';
import 'package:manual_qa_helper/pages/homepage.dart';

class ManualQaPage extends StatelessWidget {
  ManualQaPage({super.key});

  final ArticleController _articleController = Get.find();

  @override
  Widget build(BuildContext context) {
    backButton() {
      Get.off(() => Homepage());
    }

    return Scaffold(
      appBar: AppBar(title: Text('Ручное тестирование ПО')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _articleController.articles.length,
                itemBuilder: (context, index) {
                  final article = _articleController.articles[index];

                  return ListTile(
                    title: Text(article.title),
                    onTap: () => Get.off(Article(), arguments: article.id),
                  );
                },
              ),
            ),
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
