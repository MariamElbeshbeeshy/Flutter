import 'package:flutter/material.dart';
import 'package:news_app/Widgets/News_list_builder.dart';
import 'package:news_app/Widgets/category_View_Title.dart';

class CategoryView extends StatelessWidget {
  final String Category;
  const CategoryView({super.key, required this.Category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "News",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: CustomScrollView(
          slivers: [
            CategoryViewTitle(Category: Category),
            NewsList_Builder(category: Category),
          ],
        ),
      ),
    );
  }
}
