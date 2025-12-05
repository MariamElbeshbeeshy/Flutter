import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/product_details_screen.dart';
import 'package:store/services/product_services.dart';
import 'package:store/widgets/product_card.dart';

class ProductCardBuilder extends StatefulWidget {
  const ProductCardBuilder({
    super.key,
    required this.service,
    required this.categoryName,
  });
  final String service, categoryName;
  @override
  State<ProductCardBuilder> createState() => _ProductCardBuilderState();
}

class _ProductCardBuilderState extends State<ProductCardBuilder> {
  late Future<List<ProductModel>> products;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProductServices>(context, listen: false).getAllProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductServices>(
      builder: (context, productService, child) {
        final List<ProductModel> products = productService.products;
        if (products.isNotEmpty) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                ProductDetailsScreen.id,
                arguments: products[index],
              ),
              child: ProductCard(
                product: products[index],
                textLinesNo: 1,
                imageHeight: 100,
                imageWidth: 100,
              ),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
