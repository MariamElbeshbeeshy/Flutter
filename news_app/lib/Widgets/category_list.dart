import 'package:flutter/material.dart';
import 'package:news_app/Models/category_models.dart';
import 'package:news_app/Widgets/category_card.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryModel> categories = [
    CategoryModel(image: 'assets/technology.jpeg', title: "Technology"),
    CategoryModel(image: 'assets/entertaiment.avif', title: "Entertainment"),
    CategoryModel(image: 'assets/health.avif', title: "Health"),
    CategoryModel(image: 'assets/science.avif', title: "Science"),
    CategoryModel(image: 'assets/sports.avif', title: "Sports"),
    CategoryModel(image: 'assets/general.avif', title: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    debugPrint("Building Categories");
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemBuilder: (context, index) =>
            CategoryCard(category: categories[index]),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
