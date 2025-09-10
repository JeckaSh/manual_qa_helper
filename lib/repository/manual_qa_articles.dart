import 'package:flutter/material.dart';
import 'package:manual_qa_helper/widgets/article_content.dart';

class ManualQaArticles {
  static final article1 = ArticleContent(
    article: [Text('Привет'), Text('Я другая строка лол')],
  );
  static final article2 = ArticleContent(
    article: [Text('Я вторая статья'), Text('И тоже тестовая')],
  );
}
