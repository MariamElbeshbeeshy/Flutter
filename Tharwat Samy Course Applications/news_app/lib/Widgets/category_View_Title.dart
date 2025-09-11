import 'package:flutter/material.dart';

class CategoryViewTitle extends StatelessWidget {
  const CategoryViewTitle({super.key, required this.Category});

  final String Category;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        "$Category Top Headlines",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}
