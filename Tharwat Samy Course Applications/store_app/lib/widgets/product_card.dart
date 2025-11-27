import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class ProductCard extends StatefulWidget {
  final ProductModel product;
  final int textLinesNo;
  final double imageHeight;
  final double imageWidth;

  const ProductCard({
    super.key,
    required this.product,
    required this.textLinesNo,
    required this.imageHeight,
    required this.imageWidth,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
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
                  widget.product.image,
                  height: widget.imageHeight,
                  width: widget.imageWidth,
                  fit: BoxFit.contain,
                  alignment: AlignmentGeometry.topCenter,
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              widget.product.title,
              maxLines: widget.textLinesNo,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: const Color.fromARGB(255, 117, 116, 116)),
              textAlign: TextAlign.left,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${widget.product.price}'),
                IconButton(
                  onPressed: () {
                    setState(() {
                      widget.product.favorited = !widget.product.favorited;
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: (widget.product.favorited)
                        ? Colors.red
                        : Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
