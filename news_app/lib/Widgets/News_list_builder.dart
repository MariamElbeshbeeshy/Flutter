import 'package:flutter/material.dart';
import 'package:news_app/Services/news_service.dart';
import 'package:news_app/Widgets/news_list.dart';

class NewsList_Builder extends StatelessWidget {
  final String category;
  const NewsList_Builder({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    debugPrint("Building News List");
    return FutureBuilder(
      future: NewsService().getNews(category),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsList(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            child: Center(child: Text("Oops! there was an error.")),
          );
        } else {
          return SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
