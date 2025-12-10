import 'package:flutter/material.dart';
import 'package:store/screens/category_products_screen.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        CategoryProducts.id,
        arguments: categoryName,
      ),
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.fromLTRB(16, 10, 0, 10),
        width: 150,

        decoration: BoxDecoration(
          color: Colors.deepPurple,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 200,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            categoryName,
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
