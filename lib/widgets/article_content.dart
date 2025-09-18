import 'package:flutter/material.dart';

class ArticleContent extends StatefulWidget {
  final List<Widget> article;
  const ArticleContent({super.key, required this.article});

  @override
  State<ArticleContent> createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.article.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [widget.article[index]],
          ),
        );
      },
    );
  }
}
