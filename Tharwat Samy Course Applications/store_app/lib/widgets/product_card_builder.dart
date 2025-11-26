import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/product_services.dart';
import 'package:store/widgets/product_card.dart';

class ProductCardBuilder extends StatefulWidget {
  const ProductCardBuilder({super.key});

  @override
  State<ProductCardBuilder> createState() => _ProductCardBuilderState();
}

class _ProductCardBuilderState extends State<ProductCardBuilder> {
  late Future<List<ProductModel>> products;
  @override
  void initState() {
    super.initState();
    products = ProductServices().getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: products,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductModel> products = snapshot.data!;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) => ProductCard(product: products[index],),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
