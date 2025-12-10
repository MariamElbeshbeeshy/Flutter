import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/product_details_screen.dart';
import 'package:store/services/product_services.dart';
import 'package:store/widgets/product_card.dart';

class CategoryProductCardBuilder extends StatefulWidget {
  const CategoryProductCardBuilder({
    super.key,
    required this.service,
    required this.categoryName,
  });
  final String service, categoryName;
  @override
  State<CategoryProductCardBuilder> createState() =>
      _CategoryProductCardBuilderState();
}

class _CategoryProductCardBuilderState
    extends State<CategoryProductCardBuilder> {
  late Future<List<ProductModel>> products;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (Provider.of<ProductServices>(context, listen: false).products == []) {
        Provider.of<ProductServices>(context, listen: false).getAllProducts();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductServices>(
      builder: (context, productService, child) {
        return FutureBuilder<List<ProductModel>>(
          future: widget.service == 'get all products'
              ? productService.products
              : productService.getCategoryProducts(widget.categoryName),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<ProductModel> products = snapshot.data!;
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
      },
    );
  }
}
