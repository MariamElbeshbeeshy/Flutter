import 'package:flutter/material.dart';
import 'package:store/widgets/category_products_card_builder.dart';

class CategoryProducts extends StatefulWidget {
  const CategoryProducts({super.key});
  static String id = 'category products';

  @override
  State<CategoryProducts> createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
  @override
  Widget build(BuildContext context) {
    final String CategoryName =
        ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("$CategoryName Product"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: CategoryProductCardBuilder(
        categoryName: CategoryName,
        service: 'get category products',
      ),
    );
  }
}
