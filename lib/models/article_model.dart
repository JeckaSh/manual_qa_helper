import 'package:manual_qa_helper/widgets/article_content.dart';

class ArticleModel {
  final int id;
  final String title;
  //TODO: Сделать отдельный виджет под отображение контента
  //final String content;
  final ArticleContent content;

  ArticleModel({required this.id, required this.title, required this.content});
}
