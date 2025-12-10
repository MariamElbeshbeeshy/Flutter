import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Widgets/news_card.dart';

class NewsList extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: EdgeInsetsGeometry.only(top: 20),
          child: NewsCard(articleModel: articles[index]),
        ),
      ),
    );
  }
}
