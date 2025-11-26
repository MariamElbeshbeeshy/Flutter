import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      color: Colors.white,
      elevation: 10,
      shadowColor: const Color.fromARGB(91, 158, 158, 158),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8, 8, 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  product.image,
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                  alignment: AlignmentGeometry.topCenter,
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              product.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: const Color.fromARGB(255, 117, 116, 116)),
              textAlign: TextAlign.left,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${product.price}'),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
