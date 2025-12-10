import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/services/product_services.dart';
import 'package:store/widgets/category_button.dart';

class CategoriesRow extends StatefulWidget {
  const CategoriesRow({super.key});

  @override
  State<CategoriesRow> createState() => _CategoriesRowState();
}

class _CategoriesRowState extends State<CategoriesRow> {
  late Future<List<dynamic>> categories;
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,

      child: FutureBuilder(
        future: Provider.of<ProductServices>(
          context,
          listen: false,
        ).getAllCategories(),
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            List<dynamic> categories = Snapshot.data!;
            return ListView.builder(
              itemBuilder: (context, index) =>
                  CategoryButton(categoryName: categories[index]),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
            );
          } else {
            return SizedBox(height: 20);
          }
        },
      ),
    );
  }
}
