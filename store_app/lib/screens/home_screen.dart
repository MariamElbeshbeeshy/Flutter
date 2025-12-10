import 'package:flutter/material.dart';
import 'package:store/screens/add_product_screen.dart';
import 'package:store/widgets/categories_row.dart';
import 'package:store/widgets/all_products_card_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = 'home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.deepPurple,
        leading: Icon(Icons.arrow_back_ios),
        title: const Text("New Trend"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoriesRow()),
          SliverFillRemaining(
            child: ProductCardBuilder(
              categoryName: '',
              service: 'get all products',
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, AddProductScreen.id),
        child: Icon(Icons.add),
      ),
    );
  }
}
