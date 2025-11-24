import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

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
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.network(
                    'https://img.freepik.com/free-photo/beautiful-elegance-luxury-fashion-green-handbag_1203-7655.jpg?semt=ais_hybrid&w=740&q=80',
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                    alignment: AlignmentGeometry.topCenter,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Product Name',
              style: TextStyle(
                color: const Color.fromARGB(255, 117, 116, 116),
              ),
              textAlign: TextAlign.left,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$200'),
    
                SizedBox(width: 50),
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