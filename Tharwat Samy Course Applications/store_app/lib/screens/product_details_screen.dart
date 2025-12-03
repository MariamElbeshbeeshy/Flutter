import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/update_product_screen.dart';
import 'package:store/widgets/product_card.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});
  static String id = 'product details screen';

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ProductModel? product =
        ModalRoute.of(context)!.settings.arguments as ProductModel?;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Product Details"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductCard(
              product: product!,
              textLinesNo: 10,
              imageHeight: 250,
              imageWidth: 300,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsetsGeometry.fromLTRB(16, 5, 16, 0),
                child: Text(
                  product.category,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  //textAlign: TextAlign.left,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsetsGeometry.fromLTRB(16, 5, 16, 0),
                child: Text(
                  product.description,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  //textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: OutlinedButton(
                onPressed: () {},
                child: Text('Add to Cart'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(
          context,
          UpdateProductScreen.id,
          arguments: product,
        ),
        child: Icon(Icons.edit),
      ),
    );
  }
}
